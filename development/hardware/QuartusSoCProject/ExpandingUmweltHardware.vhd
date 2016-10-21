library ieee;
use ieee.std_logic_1164.all;

entity ExpandingUmweltHardware is
		port (
			sdram_wire_addr                       : out   std_logic_vector(11 downto 0);                    -- addr
			sdram_wire_ba                         : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n                      : out   std_logic;                                        -- cas_n
			sdram_wire_cke                        : out   std_logic;                                        -- cke
			sdram_wire_cs_n                       : out   std_logic;                                        -- cs_n
			sdram_wire_dq                         : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                        : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n                      : out   std_logic;                                        -- ras_n
			sdram_wire_we_n                       : out   std_logic;                                        -- we_n
			esp8266_rxd                           : in    std_logic                     := 'X';             -- rxd
			esp8266_txd                           : out   std_logic;                                        -- txd
			matriz_avalon_interface_0_pwms_export : out   std_logic_vector(15 downto 0);                    -- export
			clock_clk                             : in    std_logic                     := 'X'              -- clk
		);
end entity;
	
architecture socniosii of ExpandingUmweltHardware is

	component ExpandingUmweltSoCOrganization is
		port (
			sdram_wire_addr                       : out   std_logic_vector(11 downto 0);                    -- addr
			sdram_wire_ba                         : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n                      : out   std_logic;                                        -- cas_n
			sdram_wire_cke                        : out   std_logic;                                        -- cke
			sdram_wire_cs_n                       : out   std_logic;                                        -- cs_n
			sdram_wire_dq                         : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                        : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n                      : out   std_logic;                                        -- ras_n
			sdram_wire_we_n                       : out   std_logic;                                        -- we_n
			esp8266_rxd                           : in    std_logic                     := 'X';             -- rxd
			esp8266_txd                           : out   std_logic;                                        -- txd
			matriz_avalon_interface_0_pwms_export : out   std_logic_vector(15 downto 0);                    -- export
			clock_clk                             : in    std_logic                     := 'X'              -- clk
		);
	end component ExpandingUmweltSoCOrganization;
	
begin

	soc: ExpandingUmweltSoCOrganization port map(
			sdram_wire_addr,
			sdram_wire_ba,
			sdram_wire_cas_n,
			sdram_wire_cke,
			sdram_wire_cs_n,
			sdram_wire_dq ,
			sdram_wire_dqm,
			sdram_wire_ras_n,
			sdram_wire_we_n,
			esp8266_rxd,
			esp8266_txd,
			matriz_avalon_interface_0_pwms_export,
			clock_clk
		);

end architecture;