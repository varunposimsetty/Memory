library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MultiBankMemory is 
    generic (
        MEM_WIDTH  : integer := 32;
        MEM_DEPTH  : integer := 1024;
        BANK_COUNT : integer := 4
    );
    port (
        i_clk : in std_ulogic;
        i_nrst : in std_ulogic;
        i_state : in std_ulogic_vector(1 downto 0);
        i_write_enable : in std_ulogic;
        i_read_enable : in std_ulogic;
        i_address : in std_ulogic_vector(11 downto 0);
        i_write_data : in std_ulogic_vector(MEM_WIDTH-1 downto 0);
        o_read_data : out std_ulogic_vector(MEM_WIDTH-1 downto 0)
    );
end entity MultiBankMemory;

architecture RTL of MultiBankMemory is 
    type t_bank_signals is record 
        clk_en    : std_ulogic;
        write_en  : std_ulogic;
        read_en   : std_ulogic;
    end record;

    type t_control_signal is array(0 to BANK_COUNT-1) of t_bank_signals;
    signal control_signals : t_control_signal;

    type t_bank_read_data is array(0 to BANK_COUNT-1) of std_ulogic_vector(MEM_WIDTH-1 downto 0); 
    signal bank_read_data : t_bank_read_data := (others => (others => '0'));

    signal sel_d : std_ulogic_vector(1 downto 0);

    type t_clk_array is array(0 to BANK_COUNT-1) of std_ulogic;
    signal clk_enable : t_clk_array := (others => '0');

begin
    gen_clk_enable : for i in 0 to BANK_COUNT-1 generate 
        clk_enable(i) <= control_signals(i).clk_en and i_state(1);
    end generate gen_clk_enable;

    gen_banks: for i in 0 to BANK_COUNT-1 generate
        BANK : entity work.SingleBankMemory(RTL)
            generic map (
                MEM_WIDTH => MEM_WIDTH,
                MEM_DEPTH => MEM_DEPTH
            )
            port map (
                i_clk => i_clk,
                i_nrst => i_nrst,
                i_clk_enable => clk_enable(i),
                i_state => i_state(0),
                i_write_enable => control_signals(i).write_en,
                i_read_enable => control_signals(i).read_en,
                i_address => i_address(9 downto 0),
                i_write_data => i_write_data,
                o_read_data => bank_read_data(i)
            );
    end generate gen_banks;

    process(i_clk) 
    begin 
        if rising_edge(i_clk) then 
            if (i_nrst = '0') then 
                for i in 0 to BANK_COUNT-1 loop
                    control_signals(i).clk_en <= '0';
                    control_signals(i).write_en <= '0';
                    control_signals(i).read_en <= '0';
                end loop;

            else 
                sel_d <= i_address(11 downto 10);
                for i in 0 to BANK_COUNT-1 loop
                    if (i = to_integer(unsigned(i_address(11 downto 10)))) then
                        control_signals(i).clk_en <= '1';  
                        control_signals(i).write_en <= i_write_enable;
                        control_signals(i).read_en <= i_read_enable;
                    else
                        control_signals(i).clk_en <= '0';     
                        control_signals(i).write_en <= '0';      
                        control_signals(i).read_en <= '0';       
                    end if;
                end loop;
            end if;
        end if;
    end process;
    o_read_data <= bank_read_data(to_integer(unsigned(sel_d)));
end architecture RTL;