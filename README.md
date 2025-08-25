# 🔋 Low-Power Multi-Bank Memory (VHDL + Power Analysis)
This project demonstrates the design, simulation, and power analysis of a **low-power multi-bank memory** system written in **VHDL**.  
The design leverages **bank-level clock gating** and **state-based control** to reduce unnecessary switching activity and dynamic power consumption.  

---

## 📂 Repository Structure
.
├── single_bank_memory.vhd # RTL of a single memory bank with states
├── multi_bank_memory.vhd # Top-level multi-bank memory (4 banks)
├── tb_multi_bank_memory.vhd # Testbench (stimuli for all state combinations)
├── compSim.sh # Shell script: GHDL + VCD dump + Python analysis
├── vcd_automation.py # Python script: VCD parsing → SAIF + power analysis
├── schematic.pdf # RTL schematic from Vivado synthesis
├── MultiMemoryBankOutput.png # Simulation waveform (multi-bank)
├── SingleMemoryBankOutput.png # Simulation waveform (single-bank)
├── image.png # Output simulated on Xilinx Vivado
└── switching_activity.csv # Toggle + power stats (generated)
---

## 🖥️ Design Overview

### **Single Bank Memory**
- Supports two states via `i_state`:
  - `0` → **Idle** (read-only, no writes allowed).  
  - `1` → **Active** (full read/write allowed).  
- Implements simple synchronous memory with enable-controlled clocking.

### **Multi-Bank Memory**
- Composed of **4 independent banks**.  
- Bank selection is based on upper address bits (`i_address[11:10]`).  
- Each bank has **clock enable**, **read enable**, and **write enable** signals derived from global inputs.  
- Supports **fine-grained control**:
  - `"11"` → Active (read/write).  
  - `"10"` → Write-only.  
  - `"01"` → Read-only.  
  - `"00"` → Idle (no operation).  

## 🧪 Simulation Flow

Run simulation with:

```bash
./compSim.sh

This script:

Compiles the design with GHDL.

Runs tb_multi_bank_memory simulation.

Dumps waveform to result.vcd.

Generates switching activity and power analysis using vcd_automation.py.

Produces outputs:

result.vcd (VCD waveform)

result.saif (SAIF activity file)

switching_activity.csv (toggle + dwell + hamming)

Power estimation summary in terminal.

Opens GTKWave for interactive viewing.

Example Outputs
Toggle Activity Summary
====== VCD ANALYSIS SUMMARY ======
Signals         : 46
Total Toggles   : 1,002,641
Duration (s)    : 0.001
Avg Toggle Rate : ~1.0e9 toggles/s (bit-level)

Top Toggling Signals:
  tb.uut.i_clk                          → 200,000
  tb.uut.gen_banks(0).bank.i_clk        → 200,000
  tb.uut.gen_banks(1).bank.i_clk        → 200,000
  tb.uut.gen_banks(2).bank.i_clk        → 200,000
  tb.uut.gen_banks(3).bank.i_clk        → 200,000

  Estimated Power (sample)
====== ESTIMATED DYNAMIC POWER ======
Assumptions: VDD = 1.2 V, Ceff = 2e-15 F per bit

Signal                                    Power (W)     Energy (J)
tb.uut.i_clk                              5.76e-07      5.76e-10
tb.uut.gen_banks(0).bank.i_clk            5.76e-07      5.76e-10
tb.uut.i_write_data[31:0]                 1.13e-09      1.13e-12
tb.uut.o_read_data[31:0]                  6.91e-10      6.91e-13

#Outputs 
![Single Memory Output](Images/SingleMemoryBankOutput.png)
![Multi Memory Banks Output](Images/MultiMemoryBankOutput.png)
