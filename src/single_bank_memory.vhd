library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- i_state is the state of the register bank it could be 
-- "00" : Power Down : Bank is completely powered down, data in the memory bank is lost.
-- "01" : Retention : Bank retains the memory but neither read and write are allowed. 
-- "10" : IDLE : Bank retains the memory but allows only read but no write operation is allowed.
-- "11" : Active : Bank is fully operational performs read and write.

entity SingleBankMemory is 
    generic (
        MEM_WIDTH : integer := 32;
        MEM_DEPTH : integer := 1024
    );
    port (
        i_clk : in std_ulogic;
        i_nrst : in std_ulogic;
        i_state : in std_ulogic_vector(1 downto 0); -- 00 for power_down 11 for activate 01 or 10 for idle 
        i_write_enable : in std_ulogic;
        i_read_enable : in std_ulogic;
        i_address : in std_ulogic_vector(9 downto 0);
        i_write_data : in std_ulogic_vector(31 downto 0);
        o_read_data : out std_ulogic_vector(31 downto 0)
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
                else 
                    case (i_state) is 
                        when "00" => 
                            -- Power Down 
                            MemoryArray <= (others => (others => '0'));
                            o_read_data <= (others => '0');
                        when "01" => 
                            -- Retention 
                            null;
                        when "10" =>
                            -- IDLE
                            if(i_read_enable = '1') then 
                                o_read_data <= MemoryArray(to_integer(unsigned(i_address)));
                            end if;
                        when "11" =>
                            -- Active 
                            if(i_read_enable = '1' and i_write_enable = '1') then 
                                MemoryArray(to_integer(unsigned(i_address))) <= i_write_data;
                                o_read_data <= i_write_data;
                            elsif(i_read_enable = '1' and i_write_enable = '0') then 
                                o_read_data <= MemoryArray(to_integer(unsigned(i_address)));
                            elsif(i_read_enable = '0' and i_write_enable = '1') then 
                                MemoryArray(to_integer(unsigned(i_address))) <= i_write_data;
                            end if;
                        when others => 
                            null;
                    end case;
                end if;
            end if;             
        end process proc_mem_access;
end architecture RTL;