library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SingleBankMemory is 
    generic (
        MEM_WIDTH : integer := 32;
        MEM_DEPTH : integer := 1024
    );
    port (
        i_clk : in std_ulogic;
        i_nrst : in std_ulogic;
        i_write_enable : in std_ulogic;
        i_read_enable : in std_ulogic;
        i_address : in std_ulogic_vector(9 downto 0);
        i_write_data : in std_ulogic_vector(31 downto 0);
        o_read_data : out std_ulogic_vector(31 downto 0);
        o_address_error : out std_ulogic
    );
end entity SingleBankMemory;

architecture RTL of SingleBankMemory is 
    type tMemory is array(0 to MEM_DEPTH-1) of std_ulogic_vector(MEM_WIDTH-1 downto 0); 
    signal MemoryArray : tMemory := (others => (others => '0'));

    begin 

    proc_mem_access : process(i_clk) 
        begin 
            if (rising_edge(i_clk)) then 
                if(i_nrst = '0') then 
                    MemoryArray <= (others => (others => '0'));
                    o_read_data <= (others => '0');
                    o_address_error <= '0';
                else 
                    if(to_integer(unsigned(i_address)) >= MEM_DEPTH) then -- Error in case of accessing out of bound values.
                        report "Address out of bounds" severity warning;
                        o_address_error <= '1';
                    else 
                        if(i_write_enable = '1') then -- Priority given to write over read 
                            MemoryArray(to_integer(unsigned(i_address))) <= i_write_data;
                            o_address_error <= '0';
                        elsif(i_read_enable = '1' and i_write_enable = '0') then 
                            o_read_data <= MemoryArray(to_integer(unsigned(i_address)));
                            o_address_error <= '0';
                        end if;
                    end if;
                end if;
            end if;
        end process proc_mem_access;
end architecture RTL;