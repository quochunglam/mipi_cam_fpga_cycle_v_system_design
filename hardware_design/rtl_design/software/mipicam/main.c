#include "common_includes.h"
#include "I2C_core.h"
#include "mipi_camera_config.h"
#include "mipi_bridge_config.h"

#include "auto_focus.h"

#define DEFAULT_LEVEL 			0x02

#define STATUS_BIT_DONE 		0x01
#define STATUS_BIT_FAIL 		0x02
#define STATUS_BIT_SUCCESS 		0x04

#define STATUS_ERR_CAM			0x01
#define STATUS_ERR_DDR3			0x02
#define STATUS_ERR_DMA			0x04
#define STATUS_ERR_DROP			0x08

// MIPI REG
#define MIPI_REG_PHYClkCtl		0x0056
#define MIPI_REG_PHYData0Ctl	0x0058
#define MIPI_REG_PHYData1Ctl	0x005A
#define MIPI_REG_PHYData2Ctl	0x005C
#define MIPI_REG_PHYData3Ctl	0x005E
#define MIPI_REG_PHYTimDly		0x0060
#define MIPI_REG_PHYSta			0x0062
#define MIPI_REG_CSIStatus		0x0064
#define MIPI_REG_CSIErrEn		0x0066
#define MIPI_REG_MDLSynErr		0x0068
#define MIPI_REG_FrmErrCnt		0x0080
#define MIPI_REG_MDLErrCnt		0x0090

// CAM STSP
#define CAM_START_STREAMING		0x01
#define CAM_STOP_STREAMING 		0x00

// global variables definition
bool bShowMessage = TRUE;
alt_u8 gDDR3_status;
alt_u8 gSys_status = 0x0;
const alt_u8 KeyMask = 0x0F; // 4 button
alt_u16  cam_current_focus;
// global flags definition
#define MIPI_SHOW_ERROR


void mipi_clear_error(void){
	MipiBridgeRegWrite(MIPI_REG_CSIStatus, 0x01FF); // clear error
	MipiBridgeRegWrite(MIPI_REG_MDLSynErr, 0x0000); // clear error
	MipiBridgeRegWrite(MIPI_REG_FrmErrCnt, 0x0000); // clear error
	MipiBridgeRegWrite(MIPI_REG_MDLErrCnt, 0x0000); // clear error

  	MipiBridgeRegWrite(0x0082, 0x00);
  	MipiBridgeRegWrite(0x0084, 0x00);
  	MipiBridgeRegWrite(0x0086, 0x00);
  	MipiBridgeRegWrite(0x0088, 0x00);
  	MipiBridgeRegWrite(0x008A, 0x00);
  	MipiBridgeRegWrite(0x008C, 0x00);
  	MipiBridgeRegWrite(0x008E, 0x00);
  	MipiBridgeRegWrite(0x0090, 0x00);
}

void mipi_show_error_info(void){
	alt_u16 PHY_status, SCI_status, MDLSynErr, FrmErrCnt, MDLErrCnt;

	PHY_status 	= MipiBridgeRegRead(MIPI_REG_PHYSta);
	SCI_status 	= MipiBridgeRegRead(MIPI_REG_CSIStatus);
	MDLSynErr 	= MipiBridgeRegRead(MIPI_REG_MDLSynErr);
	FrmErrCnt 	= MipiBridgeRegRead(MIPI_REG_FrmErrCnt);
	MDLErrCnt 	= MipiBridgeRegRead(MIPI_REG_MDLErrCnt);
	printf("PHY_status=%xh, CSI_status=%xh, MDLSynErr=%xh, FrmErrCnt=%xh, MDLErrCnt=%xh\r\n", PHY_status, SCI_status, MDLSynErr,FrmErrCnt, MDLErrCnt);
}

void mipi_show_error_info_more(void){
    printf("FrmErrCnt = %d\n", MipiBridgeRegRead(0x0080));
    printf("CRCErrCnt = %d\n", MipiBridgeRegRead(0x0082));
    printf("CorErrCnt = %d\n", MipiBridgeRegRead(0x0084));
    printf("HdrErrCnt = %d\n", MipiBridgeRegRead(0x0086));
    printf("EIDErrCnt = %d\n", MipiBridgeRegRead(0x0088));
    printf("CtlErrCnt = %d\n", MipiBridgeRegRead(0x008A));
    printf("SoTErrCnt = %d\n", MipiBridgeRegRead(0x008C));
    printf("SynErrCnt = %d\n", MipiBridgeRegRead(0x008E));
    printf("MDLErrCnt = %d\n", MipiBridgeRegRead(0x0090));
    printf("FIFOSTATUS = %d\n", MipiBridgeRegRead(0x00F8));
    printf("DataType = 0x%04x\n", MipiBridgeRegRead(0x006A));
    printf("CSIPktLen = %d\n", MipiBridgeRegRead(0x006E));
}

bool MIPI_Init(void){
	bool bSuccess;
	bSuccess = oc_i2c_init_ex(I2C_OPENCORES_MIPI_BASE, 125*1000*1000, 400*1000); //I2C: 400K
	if (!bSuccess){
		printf("failed to initialize MIPI-Bridge i2c\r\n");
	}
	else {
		usleep(50*1000);
		MipiBridgeInit();
	}

    usleep(500*1000);
    bSuccess = MipiCameraInit();
	if (!bSuccess){
		printf("failed to MipiCameraInit\r\n");
	}
	else {
		usleep(1000);
		MIPI_BIN_LEVEL(DEFAULT_LEVEL);
	}

	return bSuccess;
}

int main()
{
	// ------------ Camera System Initialization ------------ //
	printf("Welcome to MIPI Camera Application!!!\n");
	// mipi camera power up and reset
	IOWR(MIPI_PWDN_N_BASE, 0x00, 0x00);
	IOWR(MIPI_RESET_N_BASE, 0x00, 0x00);
	usleep(2000);
	IOWR(MIPI_PWDN_N_BASE, 0x00, 0xFF);
	usleep(2000);
	IOWR(MIPI_RESET_N_BASE, 0x00, 0xFF);

	// ddr3 status check
	gDDR3_status = IORD(DDR3_STATUS_BASE, 0x00);
	if ((gDDR3_status & STATUS_BIT_DONE) != STATUS_BIT_DONE){
		printf("local init done: fail (Status=%xh)\r\n", gDDR3_status);
		gSys_status |= STATUS_ERR_DDR3;
	}
	else if (((gSys_status & STATUS_BIT_FAIL) == STATUS_BIT_FAIL) || ((gSys_status & STATUS_BIT_SUCCESS) != STATUS_BIT_SUCCESS)){
	    printf("DDR3 calibration: fail\r\n");
	    gSys_status |= STATUS_ERR_DDR3;
	}

	// MIPI Initialization
	if (!MIPI_Init()){
		printf("MIPI_Camera Initialization failed!\r\n");
		gSys_status |= STATUS_ERR_CAM;
	}
	else{// if no initialization error, then clear error and show info
		mipi_clear_error();
		usleep(50*1000);
		mipi_clear_error();
		usleep(1000*1000);
#ifdef MIPI_SHOW_ERROR
		mipi_show_error_info();
		mipi_show_error_info_more();
#endif
	}

	// camera auto-focus
	Focus_Init();
	// trigger auto-focus after initialization
	cam_current_focus = Focus_Window(320,240);

	// Stop camera streaming
	OV8865_StartStop_Streaming(CAM_STOP_STREAMING);

	// fifo register clean up - prepare for the mem read/write

	// TODO: read csr register and implement camera read/write strategy

    return 0;
}


