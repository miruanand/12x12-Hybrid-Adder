# 12×12 Hybrid Adder

> A high-speed **12×12-bit Hybrid Adder-based Multiplier** implemented using **Verilog HDL**, combining **Carry Save Adders (CSA)**, **Ripple Carry Adders (RCA)**, and **Carry Select Adders (CSLA)** to optimize area, power consumption, and timing performance for FPGA-based digital systems.

---

## Overview

This project presents the design and implementation of a **12×12-bit Hybrid Adder-based Multiplier** targeted for FPGA applications.

Instead of relying on a single adder architecture throughout the multiplier, the design combines multiple adder types to balance speed, area, and power consumption.

Two different multiplier architectures were implemented and evaluated:

- **Code 1:** Conventional CSA + CSLA multiplier
- **Code 2:** Grouped Hybrid Adder architecture (optimized)

The grouped architecture significantly improves FPGA resource utilization while reducing power consumption and improving timing performance.

---

## Key Features

- Verilog HDL implementation
- FPGA-oriented multiplier architecture
- Carry Save Adder (CSA) reduction tree
- Carry Select Adder (CSLA)
- Ripple Carry Adder (RCA)
- Hybrid final adder architecture
- Functional simulation
- FPGA synthesis and timing analysis
- Area, power, and performance comparison

---

## Technology Stack

| Category | Technology |
|----------|------------|
| HDL | Verilog |
| FPGA Tools | Intel Quartus Prime |
| Simulation | ModelSim / Icarus Verilog |
| Digital Design | Hybrid CSA–RCA–CSLA Architecture |

---

## Why Hybrid Adders?

Multiplication consists of three major stages:

1. Partial Product Generation
2. Partial Product Reduction
3. Final Carry Propagation

Using only one adder architecture creates a trade-off between speed and hardware utilization.

This project strategically combines:

- **CSA** for efficient partial-product reduction.
- **CSLA** for faster carry propagation in the most significant bits.
- **RCA** for the least significant portion where delay is minimal.

This hybrid approach improves overall performance while minimizing hardware cost.

---

## Implemented Architectures

| Version | Description |
|----------|-------------|
| **Code 1** | Bit-level CSA + CSLA multiplier |
| **Code 2** | Grouped Hybrid Adder multiplier using CSA, RCA, and CSLA |

---

## Repository Structure

```text
12x12-Hybrid-Adder/
│
├── rtl/
├── tb/
├── docs/
│   ├── block_diagram/
│   ├── screenshots/
│   └── report/
│
├── README.md
└── LICENSE
```

---

## Block Diagram

![Hybrid Adder Block Diagram](docs/block_diagram/hybrid_adder_block_diagram.jpg)

---

## Performance Comparison

| Parameter | Code 1 | Code 2 |
|-----------|--------|--------|
| ALMs | 221 | **185** |
| Dynamic Power | 30.83 mW | **23.99 mW** |
| Static Power | 544.98 mW | 544.98 mW |
| Total Thermal Power | 21,352.50 mW | **21,336.53 mW** |
| Clock Period | 14.001 ns | **12.255 ns** |

---

## Results

The optimized grouped design demonstrates:

- Reduced FPGA resource utilization
- Lower dynamic power consumption
- Improved operating frequency
- Better overall speed-area trade-off

---

## Simulation Results

Simulation waveforms, synthesis reports, and timing analysis are available in:

```text
docs/screenshots/
```

| Code 1 | Code 2 |
|---------|---------|
| ![](docs/screenshots/code1_no_grouping/simulation_waveform_1.jpg) | ![](docs/screenshots/code2_grouping/simulation_waveform_1.png) |

---

## Running the Simulation

```bash
iverilog -o sim rtl/multiplier_grouped.v tb/tb_multiplier_grouped.v
vvp sim
```

---

## Project Documentation

The complete project report is available in:

```text
docs/report/Final_Report.docx
```

---

## Future Improvements

- Support higher-bit multipliers (16×16, 32×32)
- Explore Carry Lookahead and Kogge-Stone adders
- FPGA hardware validation
- Pipelined multiplier architecture
- ASIC implementation and physical design

---

## Team

This project was developed collaboratively as part of the **BECE406E – FPGA Based System Design** course at **VIT Chennai**.

---

## Contributors

- **Aniruddhan S**
- **Vinay K**

Guide: **Dr. Jean Jennifer Nesam**

---

## Repository Maintainer

**Mirunalini A**

This repository is maintained under my GitHub profile as part of my academic and project portfolio.

---

## License

This project is licensed under the **MIT License**.