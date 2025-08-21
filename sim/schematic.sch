# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new MultiBankMemory work:MultiBankMemory:NOFILE -nosplit
load symbol RTL_MUX5123 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_AND1 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_ROM1023 work GEN pin O output.right pinBus A input.left [2:0] fillcolor 1
load symbol RTL_MUX2 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX5136 work MUX pin I0 input.left pin I1 input.left pin O output.right pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_4102 work GEN pin C input.clk.left pin D input.left pin Q output.right pin RST input.top fillcolor 1
load symbol SingleBankMemory work:SingleBankMemory:NOFILE HIERBOX pin i_clk input.left pin i_nrst input.left pin i_read_enable input.left pin i_state input.left pin i_write_enable input.left pinBus i_address input.left [9:0] pinBus i_write_data input.left [31:0] pinBus o_read_data output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol SingleBankMemory work:abstract:NOFILE HIERBOX pin i_clk input.left pin i_nrst input.left pin i_read_enable input.left pin i_state input.left pin i_write_enable input.left pinBus i_address input.left [9:0] pinBus i_write_data input.left [31:0] pinBus o_read_data output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG__BREG_4101 work[1:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [1:0] pinBus Q output.right [1:0] fillcolor 1 sandwich 3 prop @bundle 2
load port i_clk input -pg 1 -lvl 0 -x 0 -y 30
load port i_nrst input -pg 1 -lvl 0 -x 0 -y 250
load port i_read_enable input -pg 1 -lvl 0 -x 0 -y 980
load port i_write_enable input -pg 1 -lvl 0 -x 0 -y 940
load portBus i_address input [11:0] -attr @name i_address[11:0] -pg 1 -lvl 0 -x 0 -y 270
load portBus i_state input [1:0] -attr @name i_state[1:0] -pg 1 -lvl 0 -x 0 -y 920
load portBus i_write_data input [31:0] -attr @name i_write_data[31:0] -pg 1 -lvl 0 -x 0 -y 2690
load portBus o_read_data output [31:0] -attr @name o_read_data[31:0] -pg 1 -lvl 7 -x 2580 -y 2370
load inst bank_read_data[0]_i RTL_MUX5123 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 6 -x 2450 -y 2370
load inst clk_array_00_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 3 -x 990 -y 390
load inst clk_array_0_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1510 -y 640
load inst clk_array_10_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 3 -x 990 -y 460
load inst clk_array_1_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1510 -y 710
load inst clk_array_20_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 3 -x 990 -y 530
load inst clk_array_2_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1510 -y 840
load inst clk_array_30_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 3 -x 990 -y 600
load inst clk_array_3_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1510 -y 910
load inst control_signals[0][clk_en]_i RTL_ROM1023 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[2:0] -pg 1 -lvl 1 -x 190 -y 80
load inst control_signals[0][clk_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 190 -y 650
load inst control_signals[0][read_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb000 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 990
load inst control_signals[0][read_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 730
load inst control_signals[0][write_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb000 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 850
load inst control_signals[0][write_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 2010
load inst control_signals[1][clk_en]_i RTL_ROM1023 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[2:0] -pg 1 -lvl 1 -x 190 -y 300
load inst control_signals[1][clk_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 190 -y 190
load inst control_signals[1][read_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb001 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 1130
load inst control_signals[1][read_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 2130
load inst control_signals[1][write_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb001 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 1300
load inst control_signals[1][write_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 2250
load inst control_signals[2][clk_en]_i RTL_ROM1023 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[2:0] -pg 1 -lvl 1 -x 190 -y 760
load inst control_signals[2][clk_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 190 -y 410
load inst control_signals[2][read_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb010 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 1720
load inst control_signals[2][read_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 2370
load inst control_signals[2][write_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb010 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 1440
load inst control_signals[2][write_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 2490
load inst control_signals[3][clk_en]_i RTL_ROM1023 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[2:0] -pg 1 -lvl 1 -x 190 -y 850
load inst control_signals[3][clk_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 190 -y 530
load inst control_signals[3][read_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb011 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 1860
load inst control_signals[3][read_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 2750
load inst control_signals[3][write_en]_i RTL_MUX5136 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'sb011 -pinAttr I1 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 990 -y 1580
load inst control_signals[3][write_en]_i__0 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 990 -y 2610
load inst control_signals_reg[0][clk_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 2 -x 490 -y 70
load inst control_signals_reg[0][read_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 1040
load inst control_signals_reg[0][write_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 2050
load inst control_signals_reg[1][clk_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 2 -x 490 -y 290
load inst control_signals_reg[1][read_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 2170
load inst control_signals_reg[1][write_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 2290
load inst control_signals_reg[2][clk_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 2 -x 490 -y 470
load inst control_signals_reg[2][read_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 2410
load inst control_signals_reg[2][write_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 2530
load inst control_signals_reg[3][clk_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 2 -x 490 -y 610
load inst control_signals_reg[3][read_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 2810
load inst control_signals_reg[3][write_en] RTL_REG_SYNC__BREG_4102 work -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 1510 -y 2650
load inst gen_banks[0].BANK SingleBankMemory work:SingleBankMemory:NOFILE -autohide -attr @cell(#000000) SingleBankMemory -pinBusAttr i_address @name i_address[9:0] -pinBusAttr i_write_data @name i_write_data[31:0] -pinBusAttr o_read_data @name o_read_data[31:0] -pg 1 -lvl 5 -x 2110 -y 1890
load inst gen_banks[1].BANK SingleBankMemory work:abstract:NOFILE -autohide -attr @cell(#000000) SingleBankMemory -pinBusAttr i_address @name i_address[9:0] -pinBusAttr i_write_data @name i_write_data[31:0] -pinBusAttr o_read_data @name o_read_data[31:0] -pg 1 -lvl 5 -x 2110 -y 2100
load inst gen_banks[2].BANK SingleBankMemory work:abstract:NOFILE -autohide -attr @cell(#000000) SingleBankMemory -pinBusAttr i_address @name i_address[9:0] -pinBusAttr i_write_data @name i_write_data[31:0] -pinBusAttr o_read_data @name o_read_data[31:0] -pg 1 -lvl 5 -x 2110 -y 2310
load inst gen_banks[3].BANK SingleBankMemory work:abstract:NOFILE -autohide -attr @cell(#000000) SingleBankMemory -pinBusAttr i_address @name i_address[9:0] -pinBusAttr i_write_data @name i_write_data[31:0] -pinBusAttr o_read_data @name o_read_data[31:0] -pg 1 -lvl 5 -x 2110 -y 2520
load inst sel_d_reg[1:0] RTL_REG__BREG_4101 work[1:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 5 -x 2110 -y 2750
load net <const0> -ground -attr @rip(#000000) 2 -pin control_signals[0][clk_en]_i A[2] -pin control_signals[0][clk_en]_i__0 I1 -pin control_signals[0][read_en]_i I1 -pin control_signals[0][read_en]_i S[2] -pin control_signals[0][read_en]_i__0 I1 -pin control_signals[0][write_en]_i I1 -pin control_signals[0][write_en]_i S[2] -pin control_signals[0][write_en]_i__0 I1 -pin control_signals[1][clk_en]_i A[2] -pin control_signals[1][clk_en]_i__0 I1 -pin control_signals[1][read_en]_i I1 -pin control_signals[1][read_en]_i S[2] -pin control_signals[1][read_en]_i__0 I1 -pin control_signals[1][write_en]_i I1 -pin control_signals[1][write_en]_i S[2] -pin control_signals[1][write_en]_i__0 I1 -pin control_signals[2][clk_en]_i A[2] -pin control_signals[2][clk_en]_i__0 I1 -pin control_signals[2][read_en]_i I1 -pin control_signals[2][read_en]_i S[2] -pin control_signals[2][read_en]_i__0 I1 -pin control_signals[2][write_en]_i I1 -pin control_signals[2][write_en]_i S[2] -pin control_signals[2][write_en]_i__0 I1 -pin control_signals[3][clk_en]_i A[2] -pin control_signals[3][clk_en]_i__0 I1 -pin control_signals[3][read_en]_i I1 -pin control_signals[3][read_en]_i S[2] -pin control_signals[3][read_en]_i__0 I1 -pin control_signals[3][write_en]_i I1 -pin control_signals[3][write_en]_i S[2] -pin control_signals[3][write_en]_i__0 I1
load net <const1> -power -pin control_signals[0][clk_en]_i__0 I0 -pin control_signals[0][read_en]_i__0 I0 -pin control_signals[0][write_en]_i__0 I0 -pin control_signals[1][clk_en]_i__0 I0 -pin control_signals[1][read_en]_i__0 I0 -pin control_signals[1][write_en]_i__0 I0 -pin control_signals[2][clk_en]_i__0 I0 -pin control_signals[2][read_en]_i__0 I0 -pin control_signals[2][write_en]_i__0 I0 -pin control_signals[3][clk_en]_i__0 I0 -pin control_signals[3][read_en]_i__0 I0 -pin control_signals[3][write_en]_i__0 I0
load net bank_read_data[0][0] -attr @rip(#000000) o_read_data[0] -pin bank_read_data[0]_i I0[0] -pin gen_banks[0].BANK o_read_data[0]
load net bank_read_data[0][10] -attr @rip(#000000) o_read_data[10] -pin bank_read_data[0]_i I0[10] -pin gen_banks[0].BANK o_read_data[10]
load net bank_read_data[0][11] -attr @rip(#000000) o_read_data[11] -pin bank_read_data[0]_i I0[11] -pin gen_banks[0].BANK o_read_data[11]
load net bank_read_data[0][12] -attr @rip(#000000) o_read_data[12] -pin bank_read_data[0]_i I0[12] -pin gen_banks[0].BANK o_read_data[12]
load net bank_read_data[0][13] -attr @rip(#000000) o_read_data[13] -pin bank_read_data[0]_i I0[13] -pin gen_banks[0].BANK o_read_data[13]
load net bank_read_data[0][14] -attr @rip(#000000) o_read_data[14] -pin bank_read_data[0]_i I0[14] -pin gen_banks[0].BANK o_read_data[14]
load net bank_read_data[0][15] -attr @rip(#000000) o_read_data[15] -pin bank_read_data[0]_i I0[15] -pin gen_banks[0].BANK o_read_data[15]
load net bank_read_data[0][16] -attr @rip(#000000) o_read_data[16] -pin bank_read_data[0]_i I0[16] -pin gen_banks[0].BANK o_read_data[16]
load net bank_read_data[0][17] -attr @rip(#000000) o_read_data[17] -pin bank_read_data[0]_i I0[17] -pin gen_banks[0].BANK o_read_data[17]
load net bank_read_data[0][18] -attr @rip(#000000) o_read_data[18] -pin bank_read_data[0]_i I0[18] -pin gen_banks[0].BANK o_read_data[18]
load net bank_read_data[0][19] -attr @rip(#000000) o_read_data[19] -pin bank_read_data[0]_i I0[19] -pin gen_banks[0].BANK o_read_data[19]
load net bank_read_data[0][1] -attr @rip(#000000) o_read_data[1] -pin bank_read_data[0]_i I0[1] -pin gen_banks[0].BANK o_read_data[1]
load net bank_read_data[0][20] -attr @rip(#000000) o_read_data[20] -pin bank_read_data[0]_i I0[20] -pin gen_banks[0].BANK o_read_data[20]
load net bank_read_data[0][21] -attr @rip(#000000) o_read_data[21] -pin bank_read_data[0]_i I0[21] -pin gen_banks[0].BANK o_read_data[21]
load net bank_read_data[0][22] -attr @rip(#000000) o_read_data[22] -pin bank_read_data[0]_i I0[22] -pin gen_banks[0].BANK o_read_data[22]
load net bank_read_data[0][23] -attr @rip(#000000) o_read_data[23] -pin bank_read_data[0]_i I0[23] -pin gen_banks[0].BANK o_read_data[23]
load net bank_read_data[0][24] -attr @rip(#000000) o_read_data[24] -pin bank_read_data[0]_i I0[24] -pin gen_banks[0].BANK o_read_data[24]
load net bank_read_data[0][25] -attr @rip(#000000) o_read_data[25] -pin bank_read_data[0]_i I0[25] -pin gen_banks[0].BANK o_read_data[25]
load net bank_read_data[0][26] -attr @rip(#000000) o_read_data[26] -pin bank_read_data[0]_i I0[26] -pin gen_banks[0].BANK o_read_data[26]
load net bank_read_data[0][27] -attr @rip(#000000) o_read_data[27] -pin bank_read_data[0]_i I0[27] -pin gen_banks[0].BANK o_read_data[27]
load net bank_read_data[0][28] -attr @rip(#000000) o_read_data[28] -pin bank_read_data[0]_i I0[28] -pin gen_banks[0].BANK o_read_data[28]
load net bank_read_data[0][29] -attr @rip(#000000) o_read_data[29] -pin bank_read_data[0]_i I0[29] -pin gen_banks[0].BANK o_read_data[29]
load net bank_read_data[0][2] -attr @rip(#000000) o_read_data[2] -pin bank_read_data[0]_i I0[2] -pin gen_banks[0].BANK o_read_data[2]
load net bank_read_data[0][30] -attr @rip(#000000) o_read_data[30] -pin bank_read_data[0]_i I0[30] -pin gen_banks[0].BANK o_read_data[30]
load net bank_read_data[0][31] -attr @rip(#000000) o_read_data[31] -pin bank_read_data[0]_i I0[31] -pin gen_banks[0].BANK o_read_data[31]
load net bank_read_data[0][3] -attr @rip(#000000) o_read_data[3] -pin bank_read_data[0]_i I0[3] -pin gen_banks[0].BANK o_read_data[3]
load net bank_read_data[0][4] -attr @rip(#000000) o_read_data[4] -pin bank_read_data[0]_i I0[4] -pin gen_banks[0].BANK o_read_data[4]
load net bank_read_data[0][5] -attr @rip(#000000) o_read_data[5] -pin bank_read_data[0]_i I0[5] -pin gen_banks[0].BANK o_read_data[5]
load net bank_read_data[0][6] -attr @rip(#000000) o_read_data[6] -pin bank_read_data[0]_i I0[6] -pin gen_banks[0].BANK o_read_data[6]
load net bank_read_data[0][7] -attr @rip(#000000) o_read_data[7] -pin bank_read_data[0]_i I0[7] -pin gen_banks[0].BANK o_read_data[7]
load net bank_read_data[0][8] -attr @rip(#000000) o_read_data[8] -pin bank_read_data[0]_i I0[8] -pin gen_banks[0].BANK o_read_data[8]
load net bank_read_data[0][9] -attr @rip(#000000) o_read_data[9] -pin bank_read_data[0]_i I0[9] -pin gen_banks[0].BANK o_read_data[9]
load net bank_read_data[1][0] -attr @rip(#000000) o_read_data[0] -pin bank_read_data[0]_i I1[0] -pin gen_banks[1].BANK o_read_data[0]
load net bank_read_data[1][10] -attr @rip(#000000) o_read_data[10] -pin bank_read_data[0]_i I1[10] -pin gen_banks[1].BANK o_read_data[10]
load net bank_read_data[1][11] -attr @rip(#000000) o_read_data[11] -pin bank_read_data[0]_i I1[11] -pin gen_banks[1].BANK o_read_data[11]
load net bank_read_data[1][12] -attr @rip(#000000) o_read_data[12] -pin bank_read_data[0]_i I1[12] -pin gen_banks[1].BANK o_read_data[12]
load net bank_read_data[1][13] -attr @rip(#000000) o_read_data[13] -pin bank_read_data[0]_i I1[13] -pin gen_banks[1].BANK o_read_data[13]
load net bank_read_data[1][14] -attr @rip(#000000) o_read_data[14] -pin bank_read_data[0]_i I1[14] -pin gen_banks[1].BANK o_read_data[14]
load net bank_read_data[1][15] -attr @rip(#000000) o_read_data[15] -pin bank_read_data[0]_i I1[15] -pin gen_banks[1].BANK o_read_data[15]
load net bank_read_data[1][16] -attr @rip(#000000) o_read_data[16] -pin bank_read_data[0]_i I1[16] -pin gen_banks[1].BANK o_read_data[16]
load net bank_read_data[1][17] -attr @rip(#000000) o_read_data[17] -pin bank_read_data[0]_i I1[17] -pin gen_banks[1].BANK o_read_data[17]
load net bank_read_data[1][18] -attr @rip(#000000) o_read_data[18] -pin bank_read_data[0]_i I1[18] -pin gen_banks[1].BANK o_read_data[18]
load net bank_read_data[1][19] -attr @rip(#000000) o_read_data[19] -pin bank_read_data[0]_i I1[19] -pin gen_banks[1].BANK o_read_data[19]
load net bank_read_data[1][1] -attr @rip(#000000) o_read_data[1] -pin bank_read_data[0]_i I1[1] -pin gen_banks[1].BANK o_read_data[1]
load net bank_read_data[1][20] -attr @rip(#000000) o_read_data[20] -pin bank_read_data[0]_i I1[20] -pin gen_banks[1].BANK o_read_data[20]
load net bank_read_data[1][21] -attr @rip(#000000) o_read_data[21] -pin bank_read_data[0]_i I1[21] -pin gen_banks[1].BANK o_read_data[21]
load net bank_read_data[1][22] -attr @rip(#000000) o_read_data[22] -pin bank_read_data[0]_i I1[22] -pin gen_banks[1].BANK o_read_data[22]
load net bank_read_data[1][23] -attr @rip(#000000) o_read_data[23] -pin bank_read_data[0]_i I1[23] -pin gen_banks[1].BANK o_read_data[23]
load net bank_read_data[1][24] -attr @rip(#000000) o_read_data[24] -pin bank_read_data[0]_i I1[24] -pin gen_banks[1].BANK o_read_data[24]
load net bank_read_data[1][25] -attr @rip(#000000) o_read_data[25] -pin bank_read_data[0]_i I1[25] -pin gen_banks[1].BANK o_read_data[25]
load net bank_read_data[1][26] -attr @rip(#000000) o_read_data[26] -pin bank_read_data[0]_i I1[26] -pin gen_banks[1].BANK o_read_data[26]
load net bank_read_data[1][27] -attr @rip(#000000) o_read_data[27] -pin bank_read_data[0]_i I1[27] -pin gen_banks[1].BANK o_read_data[27]
load net bank_read_data[1][28] -attr @rip(#000000) o_read_data[28] -pin bank_read_data[0]_i I1[28] -pin gen_banks[1].BANK o_read_data[28]
load net bank_read_data[1][29] -attr @rip(#000000) o_read_data[29] -pin bank_read_data[0]_i I1[29] -pin gen_banks[1].BANK o_read_data[29]
load net bank_read_data[1][2] -attr @rip(#000000) o_read_data[2] -pin bank_read_data[0]_i I1[2] -pin gen_banks[1].BANK o_read_data[2]
load net bank_read_data[1][30] -attr @rip(#000000) o_read_data[30] -pin bank_read_data[0]_i I1[30] -pin gen_banks[1].BANK o_read_data[30]
load net bank_read_data[1][31] -attr @rip(#000000) o_read_data[31] -pin bank_read_data[0]_i I1[31] -pin gen_banks[1].BANK o_read_data[31]
load net bank_read_data[1][3] -attr @rip(#000000) o_read_data[3] -pin bank_read_data[0]_i I1[3] -pin gen_banks[1].BANK o_read_data[3]
load net bank_read_data[1][4] -attr @rip(#000000) o_read_data[4] -pin bank_read_data[0]_i I1[4] -pin gen_banks[1].BANK o_read_data[4]
load net bank_read_data[1][5] -attr @rip(#000000) o_read_data[5] -pin bank_read_data[0]_i I1[5] -pin gen_banks[1].BANK o_read_data[5]
load net bank_read_data[1][6] -attr @rip(#000000) o_read_data[6] -pin bank_read_data[0]_i I1[6] -pin gen_banks[1].BANK o_read_data[6]
load net bank_read_data[1][7] -attr @rip(#000000) o_read_data[7] -pin bank_read_data[0]_i I1[7] -pin gen_banks[1].BANK o_read_data[7]
load net bank_read_data[1][8] -attr @rip(#000000) o_read_data[8] -pin bank_read_data[0]_i I1[8] -pin gen_banks[1].BANK o_read_data[8]
load net bank_read_data[1][9] -attr @rip(#000000) o_read_data[9] -pin bank_read_data[0]_i I1[9] -pin gen_banks[1].BANK o_read_data[9]
load net bank_read_data[2][0] -attr @rip(#000000) o_read_data[0] -pin bank_read_data[0]_i I2[0] -pin gen_banks[2].BANK o_read_data[0]
load net bank_read_data[2][10] -attr @rip(#000000) o_read_data[10] -pin bank_read_data[0]_i I2[10] -pin gen_banks[2].BANK o_read_data[10]
load net bank_read_data[2][11] -attr @rip(#000000) o_read_data[11] -pin bank_read_data[0]_i I2[11] -pin gen_banks[2].BANK o_read_data[11]
load net bank_read_data[2][12] -attr @rip(#000000) o_read_data[12] -pin bank_read_data[0]_i I2[12] -pin gen_banks[2].BANK o_read_data[12]
load net bank_read_data[2][13] -attr @rip(#000000) o_read_data[13] -pin bank_read_data[0]_i I2[13] -pin gen_banks[2].BANK o_read_data[13]
load net bank_read_data[2][14] -attr @rip(#000000) o_read_data[14] -pin bank_read_data[0]_i I2[14] -pin gen_banks[2].BANK o_read_data[14]
load net bank_read_data[2][15] -attr @rip(#000000) o_read_data[15] -pin bank_read_data[0]_i I2[15] -pin gen_banks[2].BANK o_read_data[15]
load net bank_read_data[2][16] -attr @rip(#000000) o_read_data[16] -pin bank_read_data[0]_i I2[16] -pin gen_banks[2].BANK o_read_data[16]
load net bank_read_data[2][17] -attr @rip(#000000) o_read_data[17] -pin bank_read_data[0]_i I2[17] -pin gen_banks[2].BANK o_read_data[17]
load net bank_read_data[2][18] -attr @rip(#000000) o_read_data[18] -pin bank_read_data[0]_i I2[18] -pin gen_banks[2].BANK o_read_data[18]
load net bank_read_data[2][19] -attr @rip(#000000) o_read_data[19] -pin bank_read_data[0]_i I2[19] -pin gen_banks[2].BANK o_read_data[19]
load net bank_read_data[2][1] -attr @rip(#000000) o_read_data[1] -pin bank_read_data[0]_i I2[1] -pin gen_banks[2].BANK o_read_data[1]
load net bank_read_data[2][20] -attr @rip(#000000) o_read_data[20] -pin bank_read_data[0]_i I2[20] -pin gen_banks[2].BANK o_read_data[20]
load net bank_read_data[2][21] -attr @rip(#000000) o_read_data[21] -pin bank_read_data[0]_i I2[21] -pin gen_banks[2].BANK o_read_data[21]
load net bank_read_data[2][22] -attr @rip(#000000) o_read_data[22] -pin bank_read_data[0]_i I2[22] -pin gen_banks[2].BANK o_read_data[22]
load net bank_read_data[2][23] -attr @rip(#000000) o_read_data[23] -pin bank_read_data[0]_i I2[23] -pin gen_banks[2].BANK o_read_data[23]
load net bank_read_data[2][24] -attr @rip(#000000) o_read_data[24] -pin bank_read_data[0]_i I2[24] -pin gen_banks[2].BANK o_read_data[24]
load net bank_read_data[2][25] -attr @rip(#000000) o_read_data[25] -pin bank_read_data[0]_i I2[25] -pin gen_banks[2].BANK o_read_data[25]
load net bank_read_data[2][26] -attr @rip(#000000) o_read_data[26] -pin bank_read_data[0]_i I2[26] -pin gen_banks[2].BANK o_read_data[26]
load net bank_read_data[2][27] -attr @rip(#000000) o_read_data[27] -pin bank_read_data[0]_i I2[27] -pin gen_banks[2].BANK o_read_data[27]
load net bank_read_data[2][28] -attr @rip(#000000) o_read_data[28] -pin bank_read_data[0]_i I2[28] -pin gen_banks[2].BANK o_read_data[28]
load net bank_read_data[2][29] -attr @rip(#000000) o_read_data[29] -pin bank_read_data[0]_i I2[29] -pin gen_banks[2].BANK o_read_data[29]
load net bank_read_data[2][2] -attr @rip(#000000) o_read_data[2] -pin bank_read_data[0]_i I2[2] -pin gen_banks[2].BANK o_read_data[2]
load net bank_read_data[2][30] -attr @rip(#000000) o_read_data[30] -pin bank_read_data[0]_i I2[30] -pin gen_banks[2].BANK o_read_data[30]
load net bank_read_data[2][31] -attr @rip(#000000) o_read_data[31] -pin bank_read_data[0]_i I2[31] -pin gen_banks[2].BANK o_read_data[31]
load net bank_read_data[2][3] -attr @rip(#000000) o_read_data[3] -pin bank_read_data[0]_i I2[3] -pin gen_banks[2].BANK o_read_data[3]
load net bank_read_data[2][4] -attr @rip(#000000) o_read_data[4] -pin bank_read_data[0]_i I2[4] -pin gen_banks[2].BANK o_read_data[4]
load net bank_read_data[2][5] -attr @rip(#000000) o_read_data[5] -pin bank_read_data[0]_i I2[5] -pin gen_banks[2].BANK o_read_data[5]
load net bank_read_data[2][6] -attr @rip(#000000) o_read_data[6] -pin bank_read_data[0]_i I2[6] -pin gen_banks[2].BANK o_read_data[6]
load net bank_read_data[2][7] -attr @rip(#000000) o_read_data[7] -pin bank_read_data[0]_i I2[7] -pin gen_banks[2].BANK o_read_data[7]
load net bank_read_data[2][8] -attr @rip(#000000) o_read_data[8] -pin bank_read_data[0]_i I2[8] -pin gen_banks[2].BANK o_read_data[8]
load net bank_read_data[2][9] -attr @rip(#000000) o_read_data[9] -pin bank_read_data[0]_i I2[9] -pin gen_banks[2].BANK o_read_data[9]
load net bank_read_data[3][0] -attr @rip(#000000) o_read_data[0] -pin bank_read_data[0]_i I3[0] -pin gen_banks[3].BANK o_read_data[0]
load net bank_read_data[3][10] -attr @rip(#000000) o_read_data[10] -pin bank_read_data[0]_i I3[10] -pin gen_banks[3].BANK o_read_data[10]
load net bank_read_data[3][11] -attr @rip(#000000) o_read_data[11] -pin bank_read_data[0]_i I3[11] -pin gen_banks[3].BANK o_read_data[11]
load net bank_read_data[3][12] -attr @rip(#000000) o_read_data[12] -pin bank_read_data[0]_i I3[12] -pin gen_banks[3].BANK o_read_data[12]
load net bank_read_data[3][13] -attr @rip(#000000) o_read_data[13] -pin bank_read_data[0]_i I3[13] -pin gen_banks[3].BANK o_read_data[13]
load net bank_read_data[3][14] -attr @rip(#000000) o_read_data[14] -pin bank_read_data[0]_i I3[14] -pin gen_banks[3].BANK o_read_data[14]
load net bank_read_data[3][15] -attr @rip(#000000) o_read_data[15] -pin bank_read_data[0]_i I3[15] -pin gen_banks[3].BANK o_read_data[15]
load net bank_read_data[3][16] -attr @rip(#000000) o_read_data[16] -pin bank_read_data[0]_i I3[16] -pin gen_banks[3].BANK o_read_data[16]
load net bank_read_data[3][17] -attr @rip(#000000) o_read_data[17] -pin bank_read_data[0]_i I3[17] -pin gen_banks[3].BANK o_read_data[17]
load net bank_read_data[3][18] -attr @rip(#000000) o_read_data[18] -pin bank_read_data[0]_i I3[18] -pin gen_banks[3].BANK o_read_data[18]
load net bank_read_data[3][19] -attr @rip(#000000) o_read_data[19] -pin bank_read_data[0]_i I3[19] -pin gen_banks[3].BANK o_read_data[19]
load net bank_read_data[3][1] -attr @rip(#000000) o_read_data[1] -pin bank_read_data[0]_i I3[1] -pin gen_banks[3].BANK o_read_data[1]
load net bank_read_data[3][20] -attr @rip(#000000) o_read_data[20] -pin bank_read_data[0]_i I3[20] -pin gen_banks[3].BANK o_read_data[20]
load net bank_read_data[3][21] -attr @rip(#000000) o_read_data[21] -pin bank_read_data[0]_i I3[21] -pin gen_banks[3].BANK o_read_data[21]
load net bank_read_data[3][22] -attr @rip(#000000) o_read_data[22] -pin bank_read_data[0]_i I3[22] -pin gen_banks[3].BANK o_read_data[22]
load net bank_read_data[3][23] -attr @rip(#000000) o_read_data[23] -pin bank_read_data[0]_i I3[23] -pin gen_banks[3].BANK o_read_data[23]
load net bank_read_data[3][24] -attr @rip(#000000) o_read_data[24] -pin bank_read_data[0]_i I3[24] -pin gen_banks[3].BANK o_read_data[24]
load net bank_read_data[3][25] -attr @rip(#000000) o_read_data[25] -pin bank_read_data[0]_i I3[25] -pin gen_banks[3].BANK o_read_data[25]
load net bank_read_data[3][26] -attr @rip(#000000) o_read_data[26] -pin bank_read_data[0]_i I3[26] -pin gen_banks[3].BANK o_read_data[26]
load net bank_read_data[3][27] -attr @rip(#000000) o_read_data[27] -pin bank_read_data[0]_i I3[27] -pin gen_banks[3].BANK o_read_data[27]
load net bank_read_data[3][28] -attr @rip(#000000) o_read_data[28] -pin bank_read_data[0]_i I3[28] -pin gen_banks[3].BANK o_read_data[28]
load net bank_read_data[3][29] -attr @rip(#000000) o_read_data[29] -pin bank_read_data[0]_i I3[29] -pin gen_banks[3].BANK o_read_data[29]
load net bank_read_data[3][2] -attr @rip(#000000) o_read_data[2] -pin bank_read_data[0]_i I3[2] -pin gen_banks[3].BANK o_read_data[2]
load net bank_read_data[3][30] -attr @rip(#000000) o_read_data[30] -pin bank_read_data[0]_i I3[30] -pin gen_banks[3].BANK o_read_data[30]
load net bank_read_data[3][31] -attr @rip(#000000) o_read_data[31] -pin bank_read_data[0]_i I3[31] -pin gen_banks[3].BANK o_read_data[31]
load net bank_read_data[3][3] -attr @rip(#000000) o_read_data[3] -pin bank_read_data[0]_i I3[3] -pin gen_banks[3].BANK o_read_data[3]
load net bank_read_data[3][4] -attr @rip(#000000) o_read_data[4] -pin bank_read_data[0]_i I3[4] -pin gen_banks[3].BANK o_read_data[4]
load net bank_read_data[3][5] -attr @rip(#000000) o_read_data[5] -pin bank_read_data[0]_i I3[5] -pin gen_banks[3].BANK o_read_data[5]
load net bank_read_data[3][6] -attr @rip(#000000) o_read_data[6] -pin bank_read_data[0]_i I3[6] -pin gen_banks[3].BANK o_read_data[6]
load net bank_read_data[3][7] -attr @rip(#000000) o_read_data[7] -pin bank_read_data[0]_i I3[7] -pin gen_banks[3].BANK o_read_data[7]
load net bank_read_data[3][8] -attr @rip(#000000) o_read_data[8] -pin bank_read_data[0]_i I3[8] -pin gen_banks[3].BANK o_read_data[8]
load net bank_read_data[3][9] -attr @rip(#000000) o_read_data[9] -pin bank_read_data[0]_i I3[9] -pin gen_banks[3].BANK o_read_data[9]
load net clk_array_0 -pin clk_array_0_i O -pin gen_banks[3].BANK i_clk
netloc clk_array_0 1 4 1 1980 640n
load net clk_array_00 -pin clk_array_00_i O -pin clk_array_0_i I0
netloc clk_array_00 1 3 1 1460 390n
load net clk_array_1 -pin clk_array_1_i O -pin gen_banks[2].BANK i_clk
netloc clk_array_1 1 4 1 1960 710n
load net clk_array_10 -pin clk_array_10_i O -pin clk_array_1_i I0
netloc clk_array_10 1 3 1 1440 460n
load net clk_array_2 -pin clk_array_2_i O -pin gen_banks[1].BANK i_clk
netloc clk_array_2 1 4 1 1920 840n
load net clk_array_20 -pin clk_array_20_i O -pin clk_array_2_i I0
netloc clk_array_20 1 3 1 1390 530n
load net clk_array_3 -pin clk_array_3_i O -pin gen_banks[0].BANK i_clk
netloc clk_array_3 1 4 1 1940 910n
load net clk_array_30 -pin clk_array_30_i O -pin clk_array_3_i I0
netloc clk_array_30 1 3 1 1370 600n
load net control_signals[0][clk_en] -pin control_signals[0][clk_en]_i__0 O -pin control_signals_reg[0][clk_en] RST
netloc control_signals[0][clk_en] 1 1 1 350 10n
load net control_signals[0][clk_en]_i_n_0 -pin control_signals[0][clk_en]_i O -pin control_signals_reg[0][clk_en] D
netloc control_signals[0][clk_en]_i_n_0 1 1 1 NJ 80
load net control_signals[0][read_en] -pin control_signals[0][read_en]_i__0 O -pin control_signals_reg[0][read_en] RST
netloc control_signals[0][read_en] 1 3 1 1350 730n
load net control_signals[0][read_en]_i_n_0 -pin control_signals[0][read_en]_i O -pin control_signals_reg[0][read_en] D
netloc control_signals[0][read_en]_i_n_0 1 3 1 1340 990n
load net control_signals[0][write_en] -pin control_signals[0][write_en]_i__0 O -pin control_signals_reg[0][write_en] RST
netloc control_signals[0][write_en] 1 3 1 1250J 1990n
load net control_signals[0][write_en]_i_n_0 -pin control_signals[0][write_en]_i O -pin control_signals_reg[0][write_en] D
netloc control_signals[0][write_en]_i_n_0 1 3 1 1290 850n
load net control_signals[1][clk_en] -pin control_signals[1][clk_en]_i__0 O -pin control_signals_reg[1][clk_en] RST
netloc control_signals[1][clk_en] 1 1 1 440J 190n
load net control_signals[1][clk_en]_i_n_0 -pin control_signals[1][clk_en]_i O -pin control_signals_reg[1][clk_en] D
netloc control_signals[1][clk_en]_i_n_0 1 1 1 NJ 300
load net control_signals[1][read_en] -pin control_signals[1][read_en]_i__0 O -pin control_signals_reg[1][read_en] RST
netloc control_signals[1][read_en] 1 3 1 1290J 2110n
load net control_signals[1][read_en]_i_n_0 -pin control_signals[1][read_en]_i O -pin control_signals_reg[1][read_en] D
netloc control_signals[1][read_en]_i_n_0 1 3 1 1270 1130n
load net control_signals[1][write_en] -pin control_signals[1][write_en]_i__0 O -pin control_signals_reg[1][write_en] RST
netloc control_signals[1][write_en] 1 3 1 1250J 2230n
load net control_signals[1][write_en]_i_n_0 -pin control_signals[1][write_en]_i O -pin control_signals_reg[1][write_en] D
netloc control_signals[1][write_en]_i_n_0 1 3 1 1230 1300n
load net control_signals[2][clk_en] -pin control_signals[2][clk_en]_i__0 O -pin control_signals_reg[2][clk_en] RST
netloc control_signals[2][clk_en] 1 1 1 NJ 410
load net control_signals[2][clk_en]_i_n_0 -pin control_signals[2][clk_en]_i O -pin control_signals_reg[2][clk_en] D
netloc control_signals[2][clk_en]_i_n_0 1 1 1 390J 480n
load net control_signals[2][read_en] -pin control_signals[2][read_en]_i__0 O -pin control_signals_reg[2][read_en] RST
netloc control_signals[2][read_en] 1 3 1 1460J 2350n
load net control_signals[2][read_en]_i_n_0 -pin control_signals[2][read_en]_i O -pin control_signals_reg[2][read_en] D
netloc control_signals[2][read_en]_i_n_0 1 3 1 1190 1720n
load net control_signals[2][write_en] -pin control_signals[2][write_en]_i__0 O -pin control_signals_reg[2][write_en] RST
netloc control_signals[2][write_en] 1 3 1 1460J 2470n
load net control_signals[2][write_en]_i_n_0 -pin control_signals[2][write_en]_i O -pin control_signals_reg[2][write_en] D
netloc control_signals[2][write_en]_i_n_0 1 3 1 1210 1440n
load net control_signals[3][clk_en] -pin control_signals[3][clk_en]_i__0 O -pin control_signals_reg[3][clk_en] RST
netloc control_signals[3][clk_en] 1 1 1 370J 530n
load net control_signals[3][clk_en]_i_n_0 -pin control_signals[3][clk_en]_i O -pin control_signals_reg[3][clk_en] D
netloc control_signals[3][clk_en]_i_n_0 1 1 1 410J 620n
load net control_signals[3][read_en] -pin control_signals[3][read_en]_i__0 O -pin control_signals_reg[3][read_en] RST
netloc control_signals[3][read_en] 1 3 1 NJ 2750
load net control_signals[3][read_en]_i_n_0 -pin control_signals[3][read_en]_i O -pin control_signals_reg[3][read_en] D
netloc control_signals[3][read_en]_i_n_0 1 3 1 1150 1860n
load net control_signals[3][write_en] -pin control_signals[3][write_en]_i__0 O -pin control_signals_reg[3][write_en] RST
netloc control_signals[3][write_en] 1 3 1 1460J 2590n
load net control_signals[3][write_en]_i_n_0 -pin control_signals[3][write_en]_i O -pin control_signals_reg[3][write_en] D
netloc control_signals[3][write_en]_i_n_0 1 3 1 1170 1580n
load net control_signals_reg[0][clk_en]__0 -pin clk_array_30_i I1 -pin control_signals_reg[0][clk_en] Q
netloc control_signals_reg[0][clk_en]__0 1 2 1 850 70n
load net control_signals_reg[0][read_en]__0 -pin control_signals_reg[0][read_en] Q -pin gen_banks[0].BANK i_read_enable
netloc control_signals_reg[0][read_en]__0 1 4 1 1900 1040n
load net control_signals_reg[0][write_en]__0 -pin control_signals_reg[0][write_en] Q -pin gen_banks[0].BANK i_write_enable
netloc control_signals_reg[0][write_en]__0 1 4 1 1820 2020n
load net control_signals_reg[1][clk_en]__0 -pin clk_array_20_i I1 -pin control_signals_reg[1][clk_en] Q
netloc control_signals_reg[1][clk_en]__0 1 2 1 830 290n
load net control_signals_reg[1][read_en]__0 -pin control_signals_reg[1][read_en] Q -pin gen_banks[1].BANK i_read_enable
netloc control_signals_reg[1][read_en]__0 1 4 1 N 2170
load net control_signals_reg[1][write_en]__0 -pin control_signals_reg[1][write_en] Q -pin gen_banks[1].BANK i_write_enable
netloc control_signals_reg[1][write_en]__0 1 4 1 1860 2230n
load net control_signals_reg[2][clk_en]__0 -pin clk_array_10_i I1 -pin control_signals_reg[2][clk_en] Q
netloc control_signals_reg[2][clk_en]__0 1 2 1 N 470
load net control_signals_reg[2][read_en]__0 -pin control_signals_reg[2][read_en] Q -pin gen_banks[2].BANK i_read_enable
netloc control_signals_reg[2][read_en]__0 1 4 1 1820 2380n
load net control_signals_reg[2][write_en]__0 -pin control_signals_reg[2][write_en] Q -pin gen_banks[2].BANK i_write_enable
netloc control_signals_reg[2][write_en]__0 1 4 1 1780 2440n
load net control_signals_reg[3][clk_en]__0 -pin clk_array_00_i I1 -pin control_signals_reg[3][clk_en] Q
netloc control_signals_reg[3][clk_en]__0 1 2 1 750 400n
load net control_signals_reg[3][read_en]__0 -pin control_signals_reg[3][read_en] Q -pin gen_banks[3].BANK i_read_enable
netloc control_signals_reg[3][read_en]__0 1 4 1 1980 2590n
load net control_signals_reg[3][write_en]__0 -pin control_signals_reg[3][write_en] Q -pin gen_banks[3].BANK i_write_enable
netloc control_signals_reg[3][write_en]__0 1 4 1 N 2650
load net i_address[0] -attr @rip(#000000) i_address[0] -pin gen_banks[0].BANK i_address[0] -pin gen_banks[1].BANK i_address[0] -pin gen_banks[2].BANK i_address[0] -pin gen_banks[3].BANK i_address[0] -port i_address[0]
load net i_address[10] -attr @rip(#000000) i_address[10] -pin control_signals[0][clk_en]_i A[0] -pin control_signals[0][read_en]_i S[0] -pin control_signals[0][write_en]_i S[0] -pin control_signals[1][clk_en]_i A[0] -pin control_signals[1][read_en]_i S[0] -pin control_signals[1][write_en]_i S[0] -pin control_signals[2][clk_en]_i A[0] -pin control_signals[2][read_en]_i S[0] -pin control_signals[2][write_en]_i S[0] -pin control_signals[3][clk_en]_i A[0] -pin control_signals[3][read_en]_i S[0] -pin control_signals[3][write_en]_i S[0] -port i_address[10] -pin sel_d_reg[1:0] D[0]
load net i_address[11] -attr @rip(#000000) i_address[11] -pin control_signals[0][clk_en]_i A[1] -pin control_signals[0][read_en]_i S[1] -pin control_signals[0][write_en]_i S[1] -pin control_signals[1][clk_en]_i A[1] -pin control_signals[1][read_en]_i S[1] -pin control_signals[1][write_en]_i S[1] -pin control_signals[2][clk_en]_i A[1] -pin control_signals[2][read_en]_i S[1] -pin control_signals[2][write_en]_i S[1] -pin control_signals[3][clk_en]_i A[1] -pin control_signals[3][read_en]_i S[1] -pin control_signals[3][write_en]_i S[1] -port i_address[11] -pin sel_d_reg[1:0] D[1]
load net i_address[1] -attr @rip(#000000) i_address[1] -pin gen_banks[0].BANK i_address[1] -pin gen_banks[1].BANK i_address[1] -pin gen_banks[2].BANK i_address[1] -pin gen_banks[3].BANK i_address[1] -port i_address[1]
load net i_address[2] -attr @rip(#000000) i_address[2] -pin gen_banks[0].BANK i_address[2] -pin gen_banks[1].BANK i_address[2] -pin gen_banks[2].BANK i_address[2] -pin gen_banks[3].BANK i_address[2] -port i_address[2]
load net i_address[3] -attr @rip(#000000) i_address[3] -pin gen_banks[0].BANK i_address[3] -pin gen_banks[1].BANK i_address[3] -pin gen_banks[2].BANK i_address[3] -pin gen_banks[3].BANK i_address[3] -port i_address[3]
load net i_address[4] -attr @rip(#000000) i_address[4] -pin gen_banks[0].BANK i_address[4] -pin gen_banks[1].BANK i_address[4] -pin gen_banks[2].BANK i_address[4] -pin gen_banks[3].BANK i_address[4] -port i_address[4]
load net i_address[5] -attr @rip(#000000) i_address[5] -pin gen_banks[0].BANK i_address[5] -pin gen_banks[1].BANK i_address[5] -pin gen_banks[2].BANK i_address[5] -pin gen_banks[3].BANK i_address[5] -port i_address[5]
load net i_address[6] -attr @rip(#000000) i_address[6] -pin gen_banks[0].BANK i_address[6] -pin gen_banks[1].BANK i_address[6] -pin gen_banks[2].BANK i_address[6] -pin gen_banks[3].BANK i_address[6] -port i_address[6]
load net i_address[7] -attr @rip(#000000) i_address[7] -pin gen_banks[0].BANK i_address[7] -pin gen_banks[1].BANK i_address[7] -pin gen_banks[2].BANK i_address[7] -pin gen_banks[3].BANK i_address[7] -port i_address[7]
load net i_address[8] -attr @rip(#000000) i_address[8] -pin gen_banks[0].BANK i_address[8] -pin gen_banks[1].BANK i_address[8] -pin gen_banks[2].BANK i_address[8] -pin gen_banks[3].BANK i_address[8] -port i_address[8]
load net i_address[9] -attr @rip(#000000) i_address[9] -pin gen_banks[0].BANK i_address[9] -pin gen_banks[1].BANK i_address[9] -pin gen_banks[2].BANK i_address[9] -pin gen_banks[3].BANK i_address[9] -port i_address[9]
load net i_clk -pin clk_array_00_i I0 -pin clk_array_10_i I0 -pin clk_array_20_i I0 -pin clk_array_30_i I0 -pin control_signals_reg[0][clk_en] C -pin control_signals_reg[0][read_en] C -pin control_signals_reg[0][write_en] C -pin control_signals_reg[1][clk_en] C -pin control_signals_reg[1][read_en] C -pin control_signals_reg[1][write_en] C -pin control_signals_reg[2][clk_en] C -pin control_signals_reg[2][read_en] C -pin control_signals_reg[2][write_en] C -pin control_signals_reg[3][clk_en] C -pin control_signals_reg[3][read_en] C -pin control_signals_reg[3][write_en] C -port i_clk -pin sel_d_reg[1:0] C
netloc i_clk 1 0 5 NJ 30 420 530 790 1240 1320 2730 N
load net i_nrst -pin control_signals[0][clk_en]_i__0 S -pin control_signals[0][read_en]_i__0 S -pin control_signals[0][write_en]_i__0 S -pin control_signals[1][clk_en]_i__0 S -pin control_signals[1][read_en]_i__0 S -pin control_signals[1][write_en]_i__0 S -pin control_signals[2][clk_en]_i__0 S -pin control_signals[2][read_en]_i__0 S -pin control_signals[2][write_en]_i__0 S -pin control_signals[3][clk_en]_i__0 S -pin control_signals[3][read_en]_i__0 S -pin control_signals[3][write_en]_i__0 S -pin gen_banks[0].BANK i_nrst -pin gen_banks[1].BANK i_nrst -pin gen_banks[2].BANK i_nrst -pin gen_banks[3].BANK i_nrst -port i_nrst -pin sel_d_reg[1:0] CE
netloc i_nrst 1 0 5 20 710N N 710 750 790N N 790 1880
load net i_read_enable -pin control_signals[0][read_en]_i I0 -pin control_signals[1][read_en]_i I0 -pin control_signals[2][read_en]_i I0 -pin control_signals[3][read_en]_i I0 -port i_read_enable
netloc i_read_enable 1 0 3 NJ 980 NJ 980 770
load net i_state[0] -attr @rip(#000000) i_state[0] -pin gen_banks[0].BANK i_state -pin gen_banks[1].BANK i_state -pin gen_banks[2].BANK i_state -pin gen_banks[3].BANK i_state -port i_state[0]
load net i_state[1] -attr @rip(#000000) i_state[1] -pin clk_array_0_i I1 -pin clk_array_1_i I1 -pin clk_array_2_i I1 -pin clk_array_3_i I1 -port i_state[1]
load net i_write_data[0] -attr @rip(#000000) i_write_data[0] -pin gen_banks[0].BANK i_write_data[0] -pin gen_banks[1].BANK i_write_data[0] -pin gen_banks[2].BANK i_write_data[0] -pin gen_banks[3].BANK i_write_data[0] -port i_write_data[0]
load net i_write_data[10] -attr @rip(#000000) i_write_data[10] -pin gen_banks[0].BANK i_write_data[10] -pin gen_banks[1].BANK i_write_data[10] -pin gen_banks[2].BANK i_write_data[10] -pin gen_banks[3].BANK i_write_data[10] -port i_write_data[10]
load net i_write_data[11] -attr @rip(#000000) i_write_data[11] -pin gen_banks[0].BANK i_write_data[11] -pin gen_banks[1].BANK i_write_data[11] -pin gen_banks[2].BANK i_write_data[11] -pin gen_banks[3].BANK i_write_data[11] -port i_write_data[11]
load net i_write_data[12] -attr @rip(#000000) i_write_data[12] -pin gen_banks[0].BANK i_write_data[12] -pin gen_banks[1].BANK i_write_data[12] -pin gen_banks[2].BANK i_write_data[12] -pin gen_banks[3].BANK i_write_data[12] -port i_write_data[12]
load net i_write_data[13] -attr @rip(#000000) i_write_data[13] -pin gen_banks[0].BANK i_write_data[13] -pin gen_banks[1].BANK i_write_data[13] -pin gen_banks[2].BANK i_write_data[13] -pin gen_banks[3].BANK i_write_data[13] -port i_write_data[13]
load net i_write_data[14] -attr @rip(#000000) i_write_data[14] -pin gen_banks[0].BANK i_write_data[14] -pin gen_banks[1].BANK i_write_data[14] -pin gen_banks[2].BANK i_write_data[14] -pin gen_banks[3].BANK i_write_data[14] -port i_write_data[14]
load net i_write_data[15] -attr @rip(#000000) i_write_data[15] -pin gen_banks[0].BANK i_write_data[15] -pin gen_banks[1].BANK i_write_data[15] -pin gen_banks[2].BANK i_write_data[15] -pin gen_banks[3].BANK i_write_data[15] -port i_write_data[15]
load net i_write_data[16] -attr @rip(#000000) i_write_data[16] -pin gen_banks[0].BANK i_write_data[16] -pin gen_banks[1].BANK i_write_data[16] -pin gen_banks[2].BANK i_write_data[16] -pin gen_banks[3].BANK i_write_data[16] -port i_write_data[16]
load net i_write_data[17] -attr @rip(#000000) i_write_data[17] -pin gen_banks[0].BANK i_write_data[17] -pin gen_banks[1].BANK i_write_data[17] -pin gen_banks[2].BANK i_write_data[17] -pin gen_banks[3].BANK i_write_data[17] -port i_write_data[17]
load net i_write_data[18] -attr @rip(#000000) i_write_data[18] -pin gen_banks[0].BANK i_write_data[18] -pin gen_banks[1].BANK i_write_data[18] -pin gen_banks[2].BANK i_write_data[18] -pin gen_banks[3].BANK i_write_data[18] -port i_write_data[18]
load net i_write_data[19] -attr @rip(#000000) i_write_data[19] -pin gen_banks[0].BANK i_write_data[19] -pin gen_banks[1].BANK i_write_data[19] -pin gen_banks[2].BANK i_write_data[19] -pin gen_banks[3].BANK i_write_data[19] -port i_write_data[19]
load net i_write_data[1] -attr @rip(#000000) i_write_data[1] -pin gen_banks[0].BANK i_write_data[1] -pin gen_banks[1].BANK i_write_data[1] -pin gen_banks[2].BANK i_write_data[1] -pin gen_banks[3].BANK i_write_data[1] -port i_write_data[1]
load net i_write_data[20] -attr @rip(#000000) i_write_data[20] -pin gen_banks[0].BANK i_write_data[20] -pin gen_banks[1].BANK i_write_data[20] -pin gen_banks[2].BANK i_write_data[20] -pin gen_banks[3].BANK i_write_data[20] -port i_write_data[20]
load net i_write_data[21] -attr @rip(#000000) i_write_data[21] -pin gen_banks[0].BANK i_write_data[21] -pin gen_banks[1].BANK i_write_data[21] -pin gen_banks[2].BANK i_write_data[21] -pin gen_banks[3].BANK i_write_data[21] -port i_write_data[21]
load net i_write_data[22] -attr @rip(#000000) i_write_data[22] -pin gen_banks[0].BANK i_write_data[22] -pin gen_banks[1].BANK i_write_data[22] -pin gen_banks[2].BANK i_write_data[22] -pin gen_banks[3].BANK i_write_data[22] -port i_write_data[22]
load net i_write_data[23] -attr @rip(#000000) i_write_data[23] -pin gen_banks[0].BANK i_write_data[23] -pin gen_banks[1].BANK i_write_data[23] -pin gen_banks[2].BANK i_write_data[23] -pin gen_banks[3].BANK i_write_data[23] -port i_write_data[23]
load net i_write_data[24] -attr @rip(#000000) i_write_data[24] -pin gen_banks[0].BANK i_write_data[24] -pin gen_banks[1].BANK i_write_data[24] -pin gen_banks[2].BANK i_write_data[24] -pin gen_banks[3].BANK i_write_data[24] -port i_write_data[24]
load net i_write_data[25] -attr @rip(#000000) i_write_data[25] -pin gen_banks[0].BANK i_write_data[25] -pin gen_banks[1].BANK i_write_data[25] -pin gen_banks[2].BANK i_write_data[25] -pin gen_banks[3].BANK i_write_data[25] -port i_write_data[25]
load net i_write_data[26] -attr @rip(#000000) i_write_data[26] -pin gen_banks[0].BANK i_write_data[26] -pin gen_banks[1].BANK i_write_data[26] -pin gen_banks[2].BANK i_write_data[26] -pin gen_banks[3].BANK i_write_data[26] -port i_write_data[26]
load net i_write_data[27] -attr @rip(#000000) i_write_data[27] -pin gen_banks[0].BANK i_write_data[27] -pin gen_banks[1].BANK i_write_data[27] -pin gen_banks[2].BANK i_write_data[27] -pin gen_banks[3].BANK i_write_data[27] -port i_write_data[27]
load net i_write_data[28] -attr @rip(#000000) i_write_data[28] -pin gen_banks[0].BANK i_write_data[28] -pin gen_banks[1].BANK i_write_data[28] -pin gen_banks[2].BANK i_write_data[28] -pin gen_banks[3].BANK i_write_data[28] -port i_write_data[28]
load net i_write_data[29] -attr @rip(#000000) i_write_data[29] -pin gen_banks[0].BANK i_write_data[29] -pin gen_banks[1].BANK i_write_data[29] -pin gen_banks[2].BANK i_write_data[29] -pin gen_banks[3].BANK i_write_data[29] -port i_write_data[29]
load net i_write_data[2] -attr @rip(#000000) i_write_data[2] -pin gen_banks[0].BANK i_write_data[2] -pin gen_banks[1].BANK i_write_data[2] -pin gen_banks[2].BANK i_write_data[2] -pin gen_banks[3].BANK i_write_data[2] -port i_write_data[2]
load net i_write_data[30] -attr @rip(#000000) i_write_data[30] -pin gen_banks[0].BANK i_write_data[30] -pin gen_banks[1].BANK i_write_data[30] -pin gen_banks[2].BANK i_write_data[30] -pin gen_banks[3].BANK i_write_data[30] -port i_write_data[30]
load net i_write_data[31] -attr @rip(#000000) i_write_data[31] -pin gen_banks[0].BANK i_write_data[31] -pin gen_banks[1].BANK i_write_data[31] -pin gen_banks[2].BANK i_write_data[31] -pin gen_banks[3].BANK i_write_data[31] -port i_write_data[31]
load net i_write_data[3] -attr @rip(#000000) i_write_data[3] -pin gen_banks[0].BANK i_write_data[3] -pin gen_banks[1].BANK i_write_data[3] -pin gen_banks[2].BANK i_write_data[3] -pin gen_banks[3].BANK i_write_data[3] -port i_write_data[3]
load net i_write_data[4] -attr @rip(#000000) i_write_data[4] -pin gen_banks[0].BANK i_write_data[4] -pin gen_banks[1].BANK i_write_data[4] -pin gen_banks[2].BANK i_write_data[4] -pin gen_banks[3].BANK i_write_data[4] -port i_write_data[4]
load net i_write_data[5] -attr @rip(#000000) i_write_data[5] -pin gen_banks[0].BANK i_write_data[5] -pin gen_banks[1].BANK i_write_data[5] -pin gen_banks[2].BANK i_write_data[5] -pin gen_banks[3].BANK i_write_data[5] -port i_write_data[5]
load net i_write_data[6] -attr @rip(#000000) i_write_data[6] -pin gen_banks[0].BANK i_write_data[6] -pin gen_banks[1].BANK i_write_data[6] -pin gen_banks[2].BANK i_write_data[6] -pin gen_banks[3].BANK i_write_data[6] -port i_write_data[6]
load net i_write_data[7] -attr @rip(#000000) i_write_data[7] -pin gen_banks[0].BANK i_write_data[7] -pin gen_banks[1].BANK i_write_data[7] -pin gen_banks[2].BANK i_write_data[7] -pin gen_banks[3].BANK i_write_data[7] -port i_write_data[7]
load net i_write_data[8] -attr @rip(#000000) i_write_data[8] -pin gen_banks[0].BANK i_write_data[8] -pin gen_banks[1].BANK i_write_data[8] -pin gen_banks[2].BANK i_write_data[8] -pin gen_banks[3].BANK i_write_data[8] -port i_write_data[8]
load net i_write_data[9] -attr @rip(#000000) i_write_data[9] -pin gen_banks[0].BANK i_write_data[9] -pin gen_banks[1].BANK i_write_data[9] -pin gen_banks[2].BANK i_write_data[9] -pin gen_banks[3].BANK i_write_data[9] -port i_write_data[9]
load net i_write_enable -pin control_signals[0][write_en]_i I0 -pin control_signals[1][write_en]_i I0 -pin control_signals[2][write_en]_i I0 -pin control_signals[3][write_en]_i I0 -port i_write_enable
netloc i_write_enable 1 0 3 NJ 940 NJ 940 830
load net o_read_data[0] -attr @rip(#000000) O[0] -pin bank_read_data[0]_i O[0] -port o_read_data[0]
load net o_read_data[10] -attr @rip(#000000) O[10] -pin bank_read_data[0]_i O[10] -port o_read_data[10]
load net o_read_data[11] -attr @rip(#000000) O[11] -pin bank_read_data[0]_i O[11] -port o_read_data[11]
load net o_read_data[12] -attr @rip(#000000) O[12] -pin bank_read_data[0]_i O[12] -port o_read_data[12]
load net o_read_data[13] -attr @rip(#000000) O[13] -pin bank_read_data[0]_i O[13] -port o_read_data[13]
load net o_read_data[14] -attr @rip(#000000) O[14] -pin bank_read_data[0]_i O[14] -port o_read_data[14]
load net o_read_data[15] -attr @rip(#000000) O[15] -pin bank_read_data[0]_i O[15] -port o_read_data[15]
load net o_read_data[16] -attr @rip(#000000) O[16] -pin bank_read_data[0]_i O[16] -port o_read_data[16]
load net o_read_data[17] -attr @rip(#000000) O[17] -pin bank_read_data[0]_i O[17] -port o_read_data[17]
load net o_read_data[18] -attr @rip(#000000) O[18] -pin bank_read_data[0]_i O[18] -port o_read_data[18]
load net o_read_data[19] -attr @rip(#000000) O[19] -pin bank_read_data[0]_i O[19] -port o_read_data[19]
load net o_read_data[1] -attr @rip(#000000) O[1] -pin bank_read_data[0]_i O[1] -port o_read_data[1]
load net o_read_data[20] -attr @rip(#000000) O[20] -pin bank_read_data[0]_i O[20] -port o_read_data[20]
load net o_read_data[21] -attr @rip(#000000) O[21] -pin bank_read_data[0]_i O[21] -port o_read_data[21]
load net o_read_data[22] -attr @rip(#000000) O[22] -pin bank_read_data[0]_i O[22] -port o_read_data[22]
load net o_read_data[23] -attr @rip(#000000) O[23] -pin bank_read_data[0]_i O[23] -port o_read_data[23]
load net o_read_data[24] -attr @rip(#000000) O[24] -pin bank_read_data[0]_i O[24] -port o_read_data[24]
load net o_read_data[25] -attr @rip(#000000) O[25] -pin bank_read_data[0]_i O[25] -port o_read_data[25]
load net o_read_data[26] -attr @rip(#000000) O[26] -pin bank_read_data[0]_i O[26] -port o_read_data[26]
load net o_read_data[27] -attr @rip(#000000) O[27] -pin bank_read_data[0]_i O[27] -port o_read_data[27]
load net o_read_data[28] -attr @rip(#000000) O[28] -pin bank_read_data[0]_i O[28] -port o_read_data[28]
load net o_read_data[29] -attr @rip(#000000) O[29] -pin bank_read_data[0]_i O[29] -port o_read_data[29]
load net o_read_data[2] -attr @rip(#000000) O[2] -pin bank_read_data[0]_i O[2] -port o_read_data[2]
load net o_read_data[30] -attr @rip(#000000) O[30] -pin bank_read_data[0]_i O[30] -port o_read_data[30]
load net o_read_data[31] -attr @rip(#000000) O[31] -pin bank_read_data[0]_i O[31] -port o_read_data[31]
load net o_read_data[3] -attr @rip(#000000) O[3] -pin bank_read_data[0]_i O[3] -port o_read_data[3]
load net o_read_data[4] -attr @rip(#000000) O[4] -pin bank_read_data[0]_i O[4] -port o_read_data[4]
load net o_read_data[5] -attr @rip(#000000) O[5] -pin bank_read_data[0]_i O[5] -port o_read_data[5]
load net o_read_data[6] -attr @rip(#000000) O[6] -pin bank_read_data[0]_i O[6] -port o_read_data[6]
load net o_read_data[7] -attr @rip(#000000) O[7] -pin bank_read_data[0]_i O[7] -port o_read_data[7]
load net o_read_data[8] -attr @rip(#000000) O[8] -pin bank_read_data[0]_i O[8] -port o_read_data[8]
load net o_read_data[9] -attr @rip(#000000) O[9] -pin bank_read_data[0]_i O[9] -port o_read_data[9]
load net sel_d[0] -attr @rip(#000000) 0 -pin bank_read_data[0]_i S[0] -pin sel_d_reg[1:0] Q[0]
load net sel_d[1] -attr @rip(#000000) 1 -pin bank_read_data[0]_i S[1] -pin sel_d_reg[1:0] Q[1]
load netBundle @i_address 12 i_address[11] i_address[10] i_address[9] i_address[8] i_address[7] i_address[6] i_address[5] i_address[4] i_address[3] i_address[2] i_address[1] i_address[0] -autobundled
netbloc @i_address 1 0 5 40 960 NJ 960 810 1050N 1150 1100 1800
load netBundle @i_state 2 i_state[1] i_state[0] -autobundled
netbloc @i_state 1 0 5 NJ 920 430J 670 750J 650 1420 960 1840
load netBundle @i_write_data 32 i_write_data[31] i_write_data[30] i_write_data[29] i_write_data[28] i_write_data[27] i_write_data[26] i_write_data[25] i_write_data[24] i_write_data[23] i_write_data[22] i_write_data[21] i_write_data[20] i_write_data[19] i_write_data[18] i_write_data[17] i_write_data[16] i_write_data[15] i_write_data[14] i_write_data[13] i_write_data[12] i_write_data[11] i_write_data[10] i_write_data[9] i_write_data[8] i_write_data[7] i_write_data[6] i_write_data[5] i_write_data[4] i_write_data[3] i_write_data[2] i_write_data[1] i_write_data[0] -autobundled
netbloc @i_write_data 1 0 5 NJ 2690 NJ 2690 NJ 2690 1190J 2710 1900
load netBundle @o_read_data 32 o_read_data[31] o_read_data[30] o_read_data[29] o_read_data[28] o_read_data[27] o_read_data[26] o_read_data[25] o_read_data[24] o_read_data[23] o_read_data[22] o_read_data[21] o_read_data[20] o_read_data[19] o_read_data[18] o_read_data[17] o_read_data[16] o_read_data[15] o_read_data[14] o_read_data[13] o_read_data[12] o_read_data[11] o_read_data[10] o_read_data[9] o_read_data[8] o_read_data[7] o_read_data[6] o_read_data[5] o_read_data[4] o_read_data[3] o_read_data[2] o_read_data[1] o_read_data[0] -autobundled
netbloc @o_read_data 1 6 1 N 2370
load netBundle @bank_read_data 32 bank_read_data[0][31] bank_read_data[0][30] bank_read_data[0][29] bank_read_data[0][28] bank_read_data[0][27] bank_read_data[0][26] bank_read_data[0][25] bank_read_data[0][24] bank_read_data[0][23] bank_read_data[0][22] bank_read_data[0][21] bank_read_data[0][20] bank_read_data[0][19] bank_read_data[0][18] bank_read_data[0][17] bank_read_data[0][16] bank_read_data[0][15] bank_read_data[0][14] bank_read_data[0][13] bank_read_data[0][12] bank_read_data[0][11] bank_read_data[0][10] bank_read_data[0][9] bank_read_data[0][8] bank_read_data[0][7] bank_read_data[0][6] bank_read_data[0][5] bank_read_data[0][4] bank_read_data[0][3] bank_read_data[0][2] bank_read_data[0][1] bank_read_data[0][0] -autobundled
netbloc @bank_read_data 1 5 1 2320 1960n
load netBundle @bank_read_data_1 32 bank_read_data[1][31] bank_read_data[1][30] bank_read_data[1][29] bank_read_data[1][28] bank_read_data[1][27] bank_read_data[1][26] bank_read_data[1][25] bank_read_data[1][24] bank_read_data[1][23] bank_read_data[1][22] bank_read_data[1][21] bank_read_data[1][20] bank_read_data[1][19] bank_read_data[1][18] bank_read_data[1][17] bank_read_data[1][16] bank_read_data[1][15] bank_read_data[1][14] bank_read_data[1][13] bank_read_data[1][12] bank_read_data[1][11] bank_read_data[1][10] bank_read_data[1][9] bank_read_data[1][8] bank_read_data[1][7] bank_read_data[1][6] bank_read_data[1][5] bank_read_data[1][4] bank_read_data[1][3] bank_read_data[1][2] bank_read_data[1][1] bank_read_data[1][0] -autobundled
netbloc @bank_read_data_1 1 5 1 2300 2170n
load netBundle @bank_read_data_2 32 bank_read_data[2][31] bank_read_data[2][30] bank_read_data[2][29] bank_read_data[2][28] bank_read_data[2][27] bank_read_data[2][26] bank_read_data[2][25] bank_read_data[2][24] bank_read_data[2][23] bank_read_data[2][22] bank_read_data[2][21] bank_read_data[2][20] bank_read_data[2][19] bank_read_data[2][18] bank_read_data[2][17] bank_read_data[2][16] bank_read_data[2][15] bank_read_data[2][14] bank_read_data[2][13] bank_read_data[2][12] bank_read_data[2][11] bank_read_data[2][10] bank_read_data[2][9] bank_read_data[2][8] bank_read_data[2][7] bank_read_data[2][6] bank_read_data[2][5] bank_read_data[2][4] bank_read_data[2][3] bank_read_data[2][2] bank_read_data[2][1] bank_read_data[2][0] -autobundled
netbloc @bank_read_data_2 1 5 1 N 2380
load netBundle @bank_read_data_3 32 bank_read_data[3][31] bank_read_data[3][30] bank_read_data[3][29] bank_read_data[3][28] bank_read_data[3][27] bank_read_data[3][26] bank_read_data[3][25] bank_read_data[3][24] bank_read_data[3][23] bank_read_data[3][22] bank_read_data[3][21] bank_read_data[3][20] bank_read_data[3][19] bank_read_data[3][18] bank_read_data[3][17] bank_read_data[3][16] bank_read_data[3][15] bank_read_data[3][14] bank_read_data[3][13] bank_read_data[3][12] bank_read_data[3][11] bank_read_data[3][10] bank_read_data[3][9] bank_read_data[3][8] bank_read_data[3][7] bank_read_data[3][6] bank_read_data[3][5] bank_read_data[3][4] bank_read_data[3][3] bank_read_data[3][2] bank_read_data[3][1] bank_read_data[3][0] -autobundled
netbloc @bank_read_data_3 1 5 1 2300 2400n
load netBundle @sel_d 2 sel_d[1] sel_d[0] -autobundled
netbloc @sel_d 1 5 1 2320 2450n
levelinfo -pg 1 0 190 490 990 1510 2110 2450 2580
pagesize -pg 1 -db -bbox -sgen -170 0 2750 2870
show
fullfit
#
# initialize ictrl to current module MultiBankMemory work:MultiBankMemory:NOFILE
ictrl init topinfo |
