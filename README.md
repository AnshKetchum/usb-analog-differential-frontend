# USB Analog Differential Frontend

A complete analog-mixed-signal (AMS) implementation of the USB 2.0 high-speed differential receiver frontend. This repository contains all schematics, simulations, layout data, design-rule checks, and characterization artifacts required for end-to-end development, verification, and integration into a USB-2 tapeout.

## Repository Structure

```
.
├── abstract.record           # Record of abstract submissions
├── cds.lib                   # Cadence library configuration
├── characterization          # Measurement & characterization data
├── custom_dff.lmap.perc      # Custom DFF library mapping/percussion files
├── data.dm                   # Data model definitions
├── display.drf               # Display rule file for layout viewing
├── docs/                     # Project documentation & paper figures
│   └── USB2_AFE_paper.pdf
├── drc/                      # Pegasus DRC run scripts & reports
├── ihnl/                     # In-house netlist library files
├── libManager.log.cdslck     # Cadence library manager lock file
├── lvs/                      # LVS run scripts & reports
├── map/                      # Library mapping files
├── netlist/                  # Generated netlist files
├── outputs/                  # Simulation waveforms & result exports
├── pex/                      # Post-extraction netlists & parasitic data
├── raw/                      # Raw data captures & logs
├── rx_ams_afe/               # Cadence Virtuoso AMS receiver schematics & layouts
├── si.env                    # Environment setup script
├── sourceme.sh               # Shell script to configure environment
└── README.md                 # ← This file
```

## Project Overview

- **Objective:** Design a USB 2.0 receiver analog frontend (AFE) that meets the high-speed (480 Mb/s) specifications using a StrongARM latch comparator and 45 Ω differential termination.
- **Key Components:**
  - **Schematics & Layout:** Located in `rx_ams_afe/`, includes StrongARM comparator, pull-down networks, and top-level AFE.
  - **Simulations:** Functional and high-speed testbenches in `outputs/`, covering common-mode shifts and timing.
  - **DRC & LVS:** Pegasus scripts and reports in `drc/` and `lvs/`, demonstrating compliance with SkyWater 130 nm rules.
  - **Characterization:** Measured PPA (performance, power, area) and stability data in `characterization/`.
  - **Post-Extraction (PEX):** Parasitic-extracted netlists in `pex/` for final timing and PPA verification.

## Results & Integration

- **Area:** 525 μm² post-layout  
- **Delay:** 273 ps comparator propagation (2.4 GHz sampling)  
- **Termination Impedance:** 45 Ω ±10%  
- **Common-Mode Range:** –50 mV to +500 mV  
- **DRC/LVS:** Clean under SkyWater 130 nm V0.0.4  
- **Integration:** Integrated into full USB-2 tapeout flow

## References

- Li _et al._, UTMI-compatible USB 2.0 transceiver in 0.13 μm CMOS  
- Razavi, _CMOS Integrated Circuits_ (StrongARM survey)  
- Chen, _Offset-cancellation in dynamic comparators_

---

*Repository maintained by Ansh.*  
