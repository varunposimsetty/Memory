library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MultiBankMemory  is 
    generic (
        MEM_WIDTH : integer := 32;
        MEM_DEPTH : integer := 1024
    );
    port (
        i_clk : in std_ulogic;
        i_nrst : in std_ulogic;
        i_write_enable : in std_ulogic;
        i_read_enable : in std_ulogic;
        i_address : in std_ulogic_vector(11 downto 0);
        i_write_data : in std_ulogic_vector(MEM_WIDTH-1 downto 0);
        o_read_data : out std_ulogic_vector(MEM_WIDTH-1 downto 0)
    );
end entity MultiBankMemory;

architecture RTL of MultiBankMemory is 
    -- BANK0
    signal write_en_0 : std_ulogic := '0';
    signal read_en_0 : std_ulogic := '0';
    signal read_data_0 : std_ulogic_vector(MEM_WIDTH-1 downto 0) := (others => '0');
    
    -- BANK1
    signal write_en_1 : std_ulogic := '0';
    signal read_en_1 : std_ulogic := '0';
    signal read_data_1 : std_ulogic_vector(MEM_WIDTH-1 downto 0) := (others => '0');
    
    -- BANK2
    signal write_en_2 : std_ulogic := '0';
    signal read_en_2 : std_ulogic := '0';
    signal read_data_2 : std_ulogic_vector(MEM_WIDTH-1 downto 0) := (others => '0');
    
    --BANK3
    signal write_en_3 : std_ulogic := '0';
    signal read_en_3 : std_ulogic := '0';
    signal read_data_3 : std_ulogic_vector(MEM_WIDTH-1 downto 0) := (others => '0');
    
    
begin
    BANK_0 : entity work.SingleBankMemory(RTL)
        generic map (
            MEM_WIDTH => 32,
            MEM_DEPTH => 1024
            )
        port map(
            i_clk => i_clk,
            i_nrst => i_nrst,
            i_write_enable => write_en_0,
            i_read_enable => read_en_0,
            i_address => i_address(9 downto 0),
            i_write_data => i_write_data,
            o_read_data => read_data_0
        );
    
    BANK_1 : entity work.SingleBankMemory(RTL)
        generic map (
            MEM_WIDTH => 32,
            MEM_DEPTH => 1024
            )
        port map(
            i_clk => i_clk,
            i_nrst => i_nrst,
            i_write_enable => write_en_1,
            i_read_enable => read_en_1,
            i_address => i_address(9 downto 0),
            i_write_data => i_write_data,
            o_read_data => read_data_1
        );
    
    BANK_2 : entity work.SingleBankMemory(RTL)
        generic map (
            MEM_WIDTH => 32,
            MEM_DEPTH => 1024
            )
        port map(
            i_clk => i_clk,
            i_nrst => i_nrst,
            i_write_enable => write_en_2,
            i_read_enable => read_en_2,
            i_address => i_address(9 downto 0),
            i_write_data => i_write_data,
            o_read_data => read_data_2
        );
    
    BANK_3 : entity work.SingleBankMemory(RTL)
        generic map (
            MEM_WIDTH => 32,
            MEM_DEPTH => 1024
            )
        port map(
            i_clk => i_clk,
            i_nrst => i_nrst,
            i_write_enable => write_en_3,
            i_read_enable => read_en_3,
            i_address => i_address(9 downto 0),
            i_write_data => i_write_data,
            o_read_data => read_data_3
        );

    process(i_clk) 
        begin 
        if(rising_edge(i_clk)) then 
            if(i_nrst = '0') then 
                bank_select <= "00";
                line_address <= (others => '0');
                o_read_data <= (others => '0');
            else 
                case (i_address(11 downto 10)) is 
                    when "00" => 
                        write_en_0 <= i_write_enable;
                        read_en_0 <= i_read_enable;
                        write_en_1 <= '0';
                        read_en_1 <= '0';
                        write_en_2 <= '0';
                        read_en_2 <= '0';
                        write_en_3 <= '0';
                        read_en_3 <= '0';
                        o_read_data <= read_data_0;
                    when "01" =>
                        write_en_1 <= i_write_enable;
                        read_en_1 <= i_read_enable;
                        write_en_0 <= '0';
                        read_en_0 <= '0';
                        write_en_2 <= '0';
                        read_en_2 <= '0';
                        write_en_3 <= '0';
                        read_en_3 <= '0';
                        o_read_data <= read_data_1;
                    when "10" => 
                        write_en_2 <= i_write_enable;
                        read_en_2 <= i_read_enable;
                        write_en_0 <= '0';
                        read_en_0 <= '0';
                        write_en_1 <= '0';
                        read_en_1 <= '0';
                        write_en_3 <= '0';
                        read_en_3 <= '0';
                        o_read_data <= read_data_2;
                    when "11" => 
                        write_en_0 <= '0';
                        read_en_0 <= '0';
                        write_en_1 <= '0';
                        read_en_1 <= '0';
                        write_en_2 <= '0';
                        read_en_2 <= '0';
                        write_en_3 <= i_write_enable;
                        read_en_3 <= i_read_enable;
                        o_read_data <= read_data_3;
                    when others => 
                        write_en_0 <= '0';
                        read_en_0 <= '0';
                        write_en_1 <= '0';
                        read_en_1 <= '0';
                        write_en_2 <= '0';
                        read_en_2 <= '0';
                        write_en_3 <= '0';
                        read_en_3 <= '0';
                        o_read_data <= (others => '0');
                end case;
            end if;
        end if;
    end process;
end architecture RTL;