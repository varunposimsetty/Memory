library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb is 
end entity tb;

architecture bhv of tb is 
    signal clk : std_ulogic := '0';
    signal rst : std_ulogic := '0';
    signal write_en : std_ulogic := '0';
    signal read_en : std_ulogic := '0';
    signal write_data : std_ulogic_vector(31 downto 0) := (others => '0');
    signal address : std_ulogic_vector(11 downto 0) := (others => '0');
    signal read_data : std_ulogic_vector(31 downto 0);
    signal address_error : std_ulogic;

begin 
    DUT_MULTI_BANK : entity work.MultiBankMemory(RTL)
        generic map (
            MEM_WIDTH => 32,
            MEM_DEPTH => 1024
        )
        port map(
            i_clk => clk,
            i_nrst => rst,
            i_write_enable => write_en,
            i_read_enable => read_en,
            i_address => address,
            i_write_data => write_data,
            o_read_data => read_data,
            o_address_error => address_error
        );

    proc_clk : process is 
    begin 
        wait for 5 ns;
        clk <= not clk;
    end process;
    
    proc_tb : process is 
    begin 
        wait for 20 ns;
        rst <= '1';
        wait for 10 ns;
        write_en <= '1';
        address <= std_ulogic_vector(to_unsigned(10, address'length)); 
        write_data <= x"AAAA_AAAA";
        wait for 10 ns;
        write_en <= '0';
        wait for 10 ns;
        read_en <= '1';
        address <= std_ulogic_vector(to_unsigned(10, address'length)); 
        wait for 10 ns;
        read_en <= '0';
        wait for 20 ns;
        read_en <= '1';
        address <= std_ulogic_vector(to_unsigned(1024, address'length)); 
        wait for 10 ns;
        read_en <= '0';
        wait for 20 ns;
        write_en <= '1';
        address <= std_ulogic_vector(to_unsigned(1024, address'length)); 
        write_data <= x"BBBB_BBBB";
        wait for 10 ns;
        write_en <= '0';
        wait for 10 ns;
        write_en <= '1';
        read_en <= '1';
        address <= std_ulogic_vector(to_unsigned(2120, address'length));  
        write_data <= x"CCCC_CCCC";
        wait for 10 ns;
        write_en <= '0';
        read_en <= '0';
        wait for 10 ns;
        write_en <= '0';
        read_en <= '0';
        address <= std_ulogic_vector(to_unsigned(1130, address'length)); 
        wait for 10 ns;
        write_en <= '1';
        address <= std_ulogic_vector(to_unsigned(1340, address'length));
        write_data <= x"DDDD_DDDD";
        wait for 10 ns;
        write_en <= '0';
        read_en <= '1';
        wait for 10 ns;
        read_en <= '0';
        write_en <= '1';
        address <= std_ulogic_vector(to_unsigned(1250, address'length));
        write_data <= x"EEEE_EEEE";
        wait for 10 ns;
        write_en <= '0';
        read_en <= '1';
        wait for 10 ns;
        read_en <= '0';
        wait for 10 ns;
        wait;
    end process proc_tb;
end architecture bhv;

