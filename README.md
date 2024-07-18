# SoC_Design_and_Planning_NASSCOM_VSD
#####  A two-week workshop on digital VLSI SoC design and planning, covering the complete RTL to GDSII flow, organized by VSD in collaboration with NASSCOM.

### Sky130 Day 1: Introduction to Open-Source EDA, OpenLANE, and Sky130 PDK

### Session 1: Communicating with Computers (SKY130_D1_SK1)
An exploration of the foundational principles of how computers interpret and execute instructions, essential for understanding hardware design and development. The session included examples using Arduino ICs and outlined the specific areas of focus for the workshop.


#### Overview of QFN-48 Package, Chip, Pads, Core, Die, and IPs (SKY_L1)
An introduction to the QFN-48 package, covering its components including the chip, pads, core, die, and intellectual properties (IPs).
| ![image](https://github.com/user-attachments/assets/d561bf42-1f37-4813-bd08-3f448210c9f1) | ![image](https://github.com/user-attachments/assets/d32de5bb-2ba1-4b8f-9456-b19df112f707) |
|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|

#### Introduction to RISC-V (SKY_L2)
A comprehensive look at the RISC-V architecture, its design principles, and its significance in modern hardware development.
The session provided a detailed analysis of RISC-V instruction sets, the critical role of the compiler in the development process, and the methodology for converting the PicoRV32 RTL (Register Transfer Level) core into physical layout and hardware implementation.

<img src="https://github.com/user-attachments/assets/8d7b3ccc-f550-4d0f-b01b-60d48a73419e" alt="image" width="800">



#### Transitioning from Software Applications to Hardware (SKY_L3)
A discussion on how software applications are translated into hardware implementations, emphasizing the importance of understanding both software and hardware paradigms.

<img src="https://github.com/user-attachments/assets/e8217f52-880c-4d84-80df-1bdd2d1c6631" alt="image" width="800">

### Session 2: Introduction to SoC design and OpenLANE
An overview of the various components involved in the open-source digital ASIC design process, providing foundational knowledge necessary for understanding the entire design flow.
A streamlined explanation of the RTL (Register Transfer Level) to GDSII (Graphic Data System II) flow, highlighting the key steps and processes involved in converting high-level hardware descriptions into final chip layouts.
| ![image](https://github.com/user-attachments/assets/39fce547-9492-4791-a503-22d012bec072) | ![image](https://github.com/user-attachments/assets/fc500614-d558-4874-bbe2-aebe2a1d91d1) |
|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|


#### OpenLANE Overview:
  - OpenLANE is an open-source ASIC (Application-Specific Integrated Circuit) design flow that aims to automate the RTL-to-GDSII process.
  - It provides a complete RTL-to-GDSII flow with several automated steps, reducing manual intervention and improving productivity.
  - OpenLANE includes tools for synthesis, floorplanning, placement, routing, and signoff stages of ASIC design.
  - It integrates various open-source tools and libraries to facilitate the design of digital ASICs.
  - OpenLANE supports customization and optimization of design parameters such as area, power, and timing constraints.
  - The platform is maintained by efabless corporation and is widely used in the academic and industry communities for ASIC development.

#### Introduction to OpenLANE detailed ASIC flow:  

<img src="https://github.com/user-attachments/assets/7d9d4fe9-b65c-48fb-870d-fe36f6dbc905" alt="image" width="800">


- **Synthesis:**
  - **RTL Analysis:**
    - Ensure correctness and completeness of RTL design, addressing issues like loops and clock domain crossings.
  - **Logic Synthesis:**
    - Convert RTL to gate-level netlist, optimizing for area, power, and timing.
  - **Technology Mapping:**
    - Map logic gates to target technology cells, optimizing timing and area.

- **Floor Planning with Power Planning:**
  - **Floor Planning:**
    - Allocate chip space for logic, memory, I/O, and power structures based on size and placement.
  - **Power Planning:**
    - Design power distribution for stable delivery, minimizing noise and voltage drop.

- **Placement:**
  - **Global Placement:**
    - Initial cell placement considering timing, congestion, and wire length.
  - **Detailed Placement:**
    - Optimize cell positions for minimal wire length, congestion, and meet timing requirements.

- **Clock Tree Synthesis (CTS):**
  - **Clock Tree Synthesis:**
    - Design clock distribution network for reliable signals, minimizing skew and meeting timing.

- **Routing:**
  - **Global Routing:**
    - Establish initial signal, clock, and power paths, resolving conflicts.
  - **Detailed Routing:**
    - Implement optimized routing paths, ensuring signal integrity and minimizing parasitic effects.

- **Signoff:**
  - **Design Rule Checking (DRC):**
    - Verify layout meets manufacturing rules.
  - **Layout vs. Schematic (LVS) Verification:**
    - Ensure layout matches circuit design.
  - **Timing Analysis:**
    - Verify timing constraints across the chip.
  - **Power Analysis:**
    - Analyze power consumption and distribution.
  - **Physical Verification:**
    - Ensure layout is defect-free and meets reliability criteria.
   
  





