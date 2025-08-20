library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb is
end entity tb;

architecture behavior of tb is
    signal clk : std_ulogic := '0';
    signal nrst : std_ulogic := '0';
    signal state : std_ulogic := '0';
    signal write_enable : std_ulogic := '0';
    signal read_enable : std_ulogic := '0';
    signal address : std_ulogic_vector(9 downto 0) := (others => '0');
    signal write_data : std_ulogic_vector(31 downto 0) := (others => '0');
    signal read_data : std_ulogic_vector(31 downto 0);

    constant clk_period : time := 10 ns;

    component SingleBankMemory is
        generic (
            MEM_WIDTH : integer := 32;
            MEM_DEPTH : integer := 1024
        );
        port (
            i_clk : in std_ulogic;
            i_nrst : in std_ulogic;
            i_state : in std_ulogic;
            i_write_enable : in std_ulogic;
            i_read_enable : in std_ulogic;
            i_address : in std_ulogic_vector(9 downto 0);
            i_write_data : in std_ulogic_vector(31 downto 0);
            o_read_data : out std_ulogic_vector(31 downto 0)
        );
    end component;

begin
    uut: SingleBankMemory
        port map (
            i_clk => clk,
            i_nrst => nrst,
            i_state => state,
            i_write_enable => write_enable,
            i_read_enable => read_enable,
            i_address => address,
            i_write_data => write_data,
            o_read_data => read_data
        );

    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process clk_process;

    stim_process : process
    begin
        nrst <= '0'; 
        wait for clk_period * 2; 
        nrst <= '1'; 
        
        state <= '0'; 
        address <= "0000000000"; 
        read_enable <= '1'; 
        wait for clk_period; 

        state <= '1'; 
        write_enable <= '1'; 
        write_data <= X"FFFFFFFF"; 
        address <= "0000000000"; 
        wait for clk_period; 

        write_enable <= '0'; 
        read_enable <= '1'; 
        wait for clk_period; 

        address <= "0000000001"; 
        write_enable <= '1'; 
        write_data <= X"12345678"; 
        wait for clk_period; 

        write_enable <= '0'; 
        read_enable <= '1'; 
        wait for clk_period; 

        address <= "0000000000"; 
        read_enable <= '0'; 
        wait for clk_period; 

        state <= '1'; 
        address <= "0000000001"; 
        read_enable <= '1'; 
        wait for clk_period; 

        state <= '1'; 
        write_enable <= '1'; 
        write_data <= X"87654321"; 
        address <= "0000000001"; 
        wait for clk_period; 

        write_enable <= '0'; 
        read_enable <= '1'; 
        wait for clk_period; 

        address <= "0000000001"; 
        wait for clk_period; 

        state <= '1'; 
        write_enable <= '1'; 
        write_data <= X"ABCDABCD"; 
        address <= "0000000010"; 
        wait for clk_period; 

        write_enable <= '0'; 
        read_enable <= '1'; 
        address <= "0000000010"; 
        wait for clk_period; 
        
        read_enable <= '0'; 
        address <= "0000000000"; 
        wait for clk_period; 
        
        read_enable <= '1'; 
        state <= '0'; 
        wait for clk_period; 
        
        wait; 
    end process stim_process;

end architecture behavior;