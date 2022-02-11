	component niosii_subsys is
		port (
			clk_clk                    : in  std_logic                     := 'X';             -- clk
			key_export                 : in  std_logic                     := 'X';             -- export
			led_export                 : out std_logic_vector(7 downto 0);                     -- export
			reset_reset_n              : in  std_logic                     := 'X';             -- reset_n
			spi_mm_bride_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			spi_mm_bride_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			spi_mm_bride_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			spi_mm_bride_burstcount    : out std_logic_vector(0 downto 0);                     -- burstcount
			spi_mm_bride_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			spi_mm_bride_address       : out std_logic_vector(9 downto 0);                     -- address
			spi_mm_bride_write         : out std_logic;                                        -- write
			spi_mm_bride_read          : out std_logic;                                        -- read
			spi_mm_bride_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			spi_mm_bride_debugaccess   : out std_logic;                                        -- debugaccess
			sw_export                  : in  std_logic_vector(3 downto 0)  := (others => 'X')  -- export
		);
	end component niosii_subsys;

	u0 : component niosii_subsys
		port map (
			clk_clk                    => CONNECTED_TO_clk_clk,                    --          clk.clk
			key_export                 => CONNECTED_TO_key_export,                 --          key.export
			led_export                 => CONNECTED_TO_led_export,                 --          led.export
			reset_reset_n              => CONNECTED_TO_reset_reset_n,              --        reset.reset_n
			spi_mm_bride_waitrequest   => CONNECTED_TO_spi_mm_bride_waitrequest,   -- spi_mm_bride.waitrequest
			spi_mm_bride_readdata      => CONNECTED_TO_spi_mm_bride_readdata,      --             .readdata
			spi_mm_bride_readdatavalid => CONNECTED_TO_spi_mm_bride_readdatavalid, --             .readdatavalid
			spi_mm_bride_burstcount    => CONNECTED_TO_spi_mm_bride_burstcount,    --             .burstcount
			spi_mm_bride_writedata     => CONNECTED_TO_spi_mm_bride_writedata,     --             .writedata
			spi_mm_bride_address       => CONNECTED_TO_spi_mm_bride_address,       --             .address
			spi_mm_bride_write         => CONNECTED_TO_spi_mm_bride_write,         --             .write
			spi_mm_bride_read          => CONNECTED_TO_spi_mm_bride_read,          --             .read
			spi_mm_bride_byteenable    => CONNECTED_TO_spi_mm_bride_byteenable,    --             .byteenable
			spi_mm_bride_debugaccess   => CONNECTED_TO_spi_mm_bride_debugaccess,   --             .debugaccess
			sw_export                  => CONNECTED_TO_sw_export                   --           sw.export
		);

