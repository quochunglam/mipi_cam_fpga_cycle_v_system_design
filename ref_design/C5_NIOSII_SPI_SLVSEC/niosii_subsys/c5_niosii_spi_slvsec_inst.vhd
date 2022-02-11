	component c5_niosii_spi_slvsec is
		port (
			clk_clk                 : in  std_logic                    := 'X';             -- clk
			inck_en_inck_en_o       : out std_logic;                                       -- inck_en_o
			key_export              : in  std_logic                    := 'X';             -- export
			led_export              : out std_logic_vector(7 downto 0);                    -- export
			reg_1v2_en_reg_1v2_en_o : out std_logic;                                       -- reg_1v2_en_o
			reg_1v8_en_reg_1v8_en_o : out std_logic;                                       -- reg_1v8_en_o
			reg_3v3_en_reg_3v3_en_o : out std_logic;                                       -- reg_3v3_en_o
			reset_reset_n           : in  std_logic                    := 'X';             -- reset_n
			spi_MISO                : in  std_logic                    := 'X';             -- MISO
			spi_MOSI                : out std_logic;                                       -- MOSI
			spi_SCLK                : out std_logic;                                       -- SCLK
			spi_SS_n                : out std_logic;                                       -- SS_n
			sw_export               : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			xclr_xclr_o             : out std_logic                                        -- xclr_o
		);
	end component c5_niosii_spi_slvsec;

	u0 : component c5_niosii_spi_slvsec
		port map (
			clk_clk                 => CONNECTED_TO_clk_clk,                 --        clk.clk
			inck_en_inck_en_o       => CONNECTED_TO_inck_en_inck_en_o,       --    inck_en.inck_en_o
			key_export              => CONNECTED_TO_key_export,              --        key.export
			led_export              => CONNECTED_TO_led_export,              --        led.export
			reg_1v2_en_reg_1v2_en_o => CONNECTED_TO_reg_1v2_en_reg_1v2_en_o, -- reg_1v2_en.reg_1v2_en_o
			reg_1v8_en_reg_1v8_en_o => CONNECTED_TO_reg_1v8_en_reg_1v8_en_o, -- reg_1v8_en.reg_1v8_en_o
			reg_3v3_en_reg_3v3_en_o => CONNECTED_TO_reg_3v3_en_reg_3v3_en_o, -- reg_3v3_en.reg_3v3_en_o
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --      reset.reset_n
			spi_MISO                => CONNECTED_TO_spi_MISO,                --        spi.MISO
			spi_MOSI                => CONNECTED_TO_spi_MOSI,                --           .MOSI
			spi_SCLK                => CONNECTED_TO_spi_SCLK,                --           .SCLK
			spi_SS_n                => CONNECTED_TO_spi_SS_n,                --           .SS_n
			sw_export               => CONNECTED_TO_sw_export,               --         sw.export
			xclr_xclr_o             => CONNECTED_TO_xclr_xclr_o              --       xclr.xclr_o
		);

