library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb is
end entity tb;

architecture behavior of tb is
    signal clk         : std_ulogic := '0';
    signal nrst        : std_ulogic := '0';
    signal state       : std_ulogic_vector(1 downto 0) := "11";  -- start with both active
    signal write_enable: std_ulogic := '0';
    signal read_enable : std_ulogic := '0';
    signal address     : std_ulogic_vector(11 downto 0) := (others => '0');
    signal write_data  : std_ulogic_vector(31 downto 0) := (others => '0');
    signal read_data   : std_ulogic_vector(31 downto 0);

    constant clk_period : time := 10 ns;

    component MultiBankMemory is
        generic (
            MEM_WIDTH  : integer := 32;
            MEM_DEPTH  : integer := 1024;
            BANK_COUNT : integer := 4
        );
        port (
            i_clk         : in  std_ulogic;
            i_nrst        : in  std_ulogic;
            i_state       : in  std_ulogic_vector(1 downto 0);
            i_write_enable: in  std_ulogic;
            i_read_enable : in  std_ulogic;
            i_address     : in  std_ulogic_vector(11 downto 0);
            i_write_data  : in  std_ulogic_vector(MEM_WIDTH-1 downto 0);
            o_read_data   : out std_ulogic_vector(MEM_WIDTH-1 downto 0)
        );
    end component;

begin
    uut: MultiBankMemory
        port map (
            i_clk          => clk,
            i_nrst         => nrst,
            i_state        => state,
            i_write_enable => write_enable,
            i_read_enable  => read_enable,
            i_address      => address,
            i_write_data   => write_data,
            o_read_data    => read_data
        );

    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for clk_period/2;
            clk <= '1'; wait for clk_period/2;
        end loop;
    end process;

    stim_process : process
    begin
        nrst <= '0';
        wait for 2*clk_period;
        nrst <= '1';
        wait for clk_period;

        -- Phase 1: state = "11", both read and write enabled
        read_enable  <= '1';
        write_enable <= '1';

        -- Bank 0 (000...)
        address <= "000000000000"; write_data <= x"AAAAAAAA"; wait for clk_period;
        address <= "000000000001"; write_data <= x"BBBBBBBB"; wait for clk_period;
        address <= "000000000010"; write_data <= x"CCCCCCCC"; wait for clk_period;
        -- Overwrite bank0 addr0
        address <= "000000000000"; write_data <= x"DEADBEEF"; wait for clk_period;

        -- Bank 1 (010...)
        address <= "010000000000"; write_data <= x"11111111"; wait for clk_period;
        address <= "010000000001"; write_data <= x"22222222"; wait for clk_period;
        address <= "010000000010"; write_data <= x"33333333"; wait for clk_period;
        -- Overwrite bank1 addr1
        address <= "010000000001"; write_data <= x"CAFEBABE"; wait for clk_period;

        -- Bank 2 (100...)
        address <= "100000000000"; write_data <= x"44444444"; wait for clk_period;
        address <= "100000000001"; write_data <= x"55555555"; wait for clk_period;
        address <= "100000000010"; write_data <= x"66666666"; wait for clk_period;
        -- Overwrite bank2 addr2
        address <= "100000000010"; write_data <= x"12345678"; wait for clk_period;

        -- Bank 3 (110...)
        address <= "110000000000"; write_data <= x"77777777"; wait for clk_period;
        address <= "110000000001"; write_data <= x"88888888"; wait for clk_period;
        address <= "110000000010"; write_data <= x"99999999"; wait for clk_period;
        -- Overwrite bank3 addr1
        address <= "110000000001"; write_data <= x"87654321"; wait for clk_period;
        -- Phase 2: state = "01" (read only)
        write_enable <= '0';
        read_enable  <= '1';
        state <= "01";
        address <= "000000000000"; wait for clk_period;
        address <= "010000000001"; wait for clk_period;
        address <= "100000000010"; wait for clk_period;
        address <= "110000000001"; wait for clk_period;
        -- Phase 3: state = "10" (write only)
        write_enable <= '1';
        read_enable  <= '0';
        state <= "10";
        address <= "000000000011"; write_data <= x"F0F0F0F0"; wait for clk_period;
        address <= "010000000011"; write_data <= x"0F0F0F0F"; wait for clk_period;
        address <= "100000000011"; write_data <= x"A5A5A5A5"; wait for clk_period;
        address <= "110000000011"; write_data <= x"5A5A5A5A"; wait for clk_period;

        -- Phase 4: state = "00" (idle, neither read nor write)
        write_enable <= '0';
        read_enable  <= '0';
        state <= "00";
        address <= "000000000000"; wait for clk_period;
        address <= "010000000000"; wait for clk_period;
        address <= "100000000000"; wait for clk_period;
        address <= "110000000000"; wait for clk_period;

        
        -- Phase 5: Mix states quickly (all combos visible)
        -- state 11 again
        state <= "11"; write_enable <= '1'; read_enable <= '1';
        address <= "000000000100"; write_data <= x"ABCDABCD"; wait for clk_period;

        -- state 01
        state <= "01"; write_enable <= '0'; read_enable <= '1';
        address <= "000000000100"; wait for clk_period;

        -- state 10
        state <= "10"; write_enable <= '1'; read_enable <= '0';
        address <= "010000000100"; write_data <= x"13572468"; wait for clk_period;

        -- state 00
        state <= "00"; write_enable <= '0'; read_enable <= '0';
        address <= "010000000100"; wait for clk_period;

        wait for 100 ns;
        wait;
    end process;
end architecture behavior;
