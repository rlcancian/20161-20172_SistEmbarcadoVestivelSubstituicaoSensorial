library ieee;
use ieee.std_logic_1164.all;

entity substituicaoSentidosSoC is
end entity;

architecture qsysSystem of substituicaoSentidosSoC is
    component QSysSubstituicaoSentidosSoC is
        port (
            clk_clk                                      : in    std_logic                     := 'X';             -- clk
            reset_reset_n                                : in    std_logic                     := 'X';             -- reset_n
            pio_output16_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
            fifoed_avalon_uart_0_external_connection_rxd : in    std_logic                     := 'X';             -- rxd
            fifoed_avalon_uart_0_external_connection_txd : out   std_logic;                                        -- txd
            sram_external_interface_DQ                   : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
            sram_external_interface_ADDR                 : out   std_logic_vector(17 downto 0);                    -- ADDR
            sram_external_interface_LB_N                 : out   std_logic;                                        -- LB_N
            sram_external_interface_UB_N                 : out   std_logic;                                        -- UB_N
            sram_external_interface_CE_N                 : out   std_logic;                                        -- CE_N
            sram_external_interface_OE_N                 : out   std_logic;                                        -- OE_N
            sram_external_interface_WE_N                 : out   std_logic                                         -- WE_N
        );
    end component QSysSubstituicaoSentidosSoC;
begin
    u0 : component QSysSubstituicaoSentidosSoC
        port map (
            clk_clk                                      => CONNECTED_TO_clk_clk,                                      --                                      clk.clk
            reset_reset_n                                => CONNECTED_TO_reset_reset_n,                                --                                    reset.reset_n
            pio_output16_external_connection_export      => CONNECTED_TO_pio_output16_external_connection_export,      --         pio_output16_external_connection.export
            fifoed_avalon_uart_0_external_connection_rxd => CONNECTED_TO_fifoed_avalon_uart_0_external_connection_rxd, -- fifoed_avalon_uart_0_external_connection.rxd
            fifoed_avalon_uart_0_external_connection_txd => CONNECTED_TO_fifoed_avalon_uart_0_external_connection_txd, --                                         .txd
            sram_external_interface_DQ                   => CONNECTED_TO_sram_external_interface_DQ,                   --                  sram_external_interface.DQ
            sram_external_interface_ADDR                 => CONNECTED_TO_sram_external_interface_ADDR,                 --                                         .ADDR
            sram_external_interface_LB_N                 => CONNECTED_TO_sram_external_interface_LB_N,                 --                                         .LB_N
            sram_external_interface_UB_N                 => CONNECTED_TO_sram_external_interface_UB_N,                 --                                         .UB_N
            sram_external_interface_CE_N                 => CONNECTED_TO_sram_external_interface_CE_N,                 --                                         .CE_N
            sram_external_interface_OE_N                 => CONNECTED_TO_sram_external_interface_OE_N,                 --                                         .OE_N
            sram_external_interface_WE_N                 => CONNECTED_TO_sram_external_interface_WE_N                  --                                         .WE_N
        );
end architecture;