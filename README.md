![image](https://github.com/user-attachments/assets/f9d5f531-3540-4079-85a4-99e15380b360)# SoC_Design_and_Planning_NASSCOM_VSD
#####  A two-week workshop on digital VLSI SoC design and planning, covering the complete RTL to GDSII flow, organized by VSD in collaboration with NASSCOM.

### Sky130 Day 1: Introduction to Open-Source EDA, OpenLANE, and Sky130 PDK

### Session 1: Communicating with Computers 
An exploration of the foundational principles of how computers interpret and execute instructions, essential for understanding hardware design and development. The session included examples using Arduino ICs and outlined the specific areas of focus for the workshop.


#### Overview of QFN-48 Package, Chip, Pads, Core, Die, and IPs 
An introduction to the QFN-48 package, covering its components including the chip, pads, core, die, and intellectual properties (IPs).
| ![image](https://github.com/user-attachments/assets/d561bf42-1f37-4813-bd08-3f448210c9f1) | ![image](https://github.com/user-attachments/assets/d32de5bb-2ba1-4b8f-9456-b19df112f707) |
|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|

#### Introduction to RISC-V (SKY_L2)
A comprehensive look at the RISC-V architecture, its design principles, and its significance in modern hardware development.
The session provided a detailed analysis of RISC-V instruction sets, the critical role of the compiler in the development process, and the methodology for converting the PicoRV32 RTL (Register Transfer Level) core into physical layout and hardware implementation.

<img src="https://github.com/user-attachments/assets/8d7b3ccc-f550-4d0f-b01b-60d48a73419e" alt="image" width="700">

#### Transitioning from Software Applications to Hardware 
A discussion on how software applications are translated into hardware implementations, emphasizing the importance of understanding both software and hardware paradigms.

<img src="https://github.com/user-attachments/assets/e8217f52-880c-4d84-80df-1bdd2d1c6631" alt="image" width="700">


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
      
### Session 3: OpenLANE Directory Structure


| ![image](https://github.com/user-attachments/assets/cfd931ff-9322-48b3-8ffe-4f364d0df8c5) | ![image](https://github.com/user-attachments/assets/85101707-fbe5-49c5-88c4-a6cfc60f1ad3) |
|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
    
        cd Desktop/work/tools               # Navigate to the tools directory
        cd openlane_working_dir             # Move to the openlane_working_dir directory
        cd pdks/sky130A/                    # Navigate to the sky130A directory within pdks
        ls -ltr                             # List files in sky130A directory (reverse chronological order)
        cd libs.ref                         # all process specific files
        ls -ltr                             # List files in libs.ref directory
        cd ../libs.tech                     # Move to libs.tech directory (files specific to the tools)
        ls -ltr                             # List files in libs.tech directory
     


- **Introduction to the SkyWater 130nm PDK:**
  Explored the features and components of the SkyWater 130nm Process Design Kit (PDK), detailing its specifications and capabilities for semiconductor design.

- **Significance of Open PDKs in Silicon Foundry Files:**
  Discussed the importance of open Process Design Kits (PDKs) in providing accessible semiconductor manufacturing files, compatible with commercial Electronic Design Automation (EDA) tools.

- **Importance of libs.ref and libs.tech:**
  Emphasized the critical role of `libs.ref` (reference libraries) and `libs.tech` (technology libraries) in standardizing design components and process parameters within the EDA toolchain, ensuring consistency and compatibility across design phases.

- **sky130_fd_sc_hd Library:**
  Utilizes the `sky130_fd_sc_hd` library, where "hd" signifies high density. This library offers optimized standard cells designed to maximize packing density while maintaining performance, tailored for various digital design applications within the SkyWater 130nm Process Design Kit (PDK).

####  Commands to invoke OpenLANE:
To get into the openlane directory and invoke OpenLANE type following commands:

    
        cd Desktop/work/tools               # Navigate to the tools directory
        cd openlane_working_dir             # Move to the openlane_working_dir directory
        cd openlane
        docker                              # Launch Docker to run OpenLANE
        ls -ltr
        ./flow.tcl -interactive
     
<img src="https://github.com/user-attachments/assets/7a2f40f6-13bf-46b0-8a63-e07f4160b665" alt="image" width="700">

**Steps involved in preparing for the design process:**

    
        package require openlane 0.9
        prep - design picorv32a
        run_synthesis
   

    
  ![image](https://github.com/user-attachments/assets/53a0ab0e-7fa4-4c37-8424-45f052c10980)
  ![image](https://github.com/user-attachments/assets/20c5a347-db56-4e8c-b78d-9805f447bda3)

   | ![image](https://github.com/user-attachments/assets/c04363c1-58c0-4a48-a097-e55f1dd7b7a2) | ![image](https://github.com/user-attachments/assets/5a786780-aaa2-42e1-9ed0-04877e8d6e37) |
  |-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|

 ### Sky130 Day 2: Good floorplan vs bad floorplan and introduction to library cells
 ### Session 1: Chip Floor Planning Considerations**

  1. **Define Width and Height of Core and Die:**
     - Establish core and die dimensions to fit the design within the chip's physical constraints.
     - Ensure that the aspect ratio aligns with design and manufacturing requirements for optimal layout.

  2. **Define Location of Pre-placed Cells:**
     - Position essential cells before automated placement to meet design constraints and functionality.
     - Ensure critical components are placed in locations that support optimal performance and connectivity.

  3. **Surround Pre-placed Cells with Decoupling Capacitors:**
     - Place capacitors around pre-placed cells to stabilize power and mitigate noise interference.
     - Ensure adequate coverage to prevent power supply issues and maintain signal integrity.

  4. **Power Planning:**
     - Design a robust power distribution network to ensure stable power delivery across the chip.
     - Address potential voltage drop and noise issues by strategically placing power pads and distribution elements.

  5. **Pin Placement:**
     - Optimize pin locations to facilitate efficient signal routing and minimize congestion.
     - Ensure that pin placement supports effective connectivity and meets design requirements.

  6. **Logical Cell Placement Blockage:**
     - Define areas where logical cells cannot be placed to avoid interference with critical paths.
     - Ensure that blockages do not hinder the placement of essential cells and that routing is feasible.
    
    
|![image](https://github.com/user-attachments/assets/8172f17f-1d2b-432d-bdb8-15f21371b202) | ![image](https://github.com/user-attachments/assets/a2841ce0-0cba-4003-a5d5-322935c8bbac) |
 |-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|

![image](https://github.com/user-attachments/assets/7d90293c-9079-4c35-b565-e1cc250b9868)
![image](https://github.com/user-attachments/assets/485d7563-379a-4828-af8b-93ef73708804)

 ### Sky130 Day 3: Good floorplan vs bad floorplan and introduction to library cells

  >>![image](https://github.com/user-attachments/assets/f0b038c8-8760-4155-8b36-9f530e3211ef)

 ![image](https://github.com/user-attachments/assets/f45f25a3-e98d-4867-ad6a-ff4b52d68be3)

 spice simulations
| ![image](https://github.com/user-attachments/assets/c7d13525-09f2-461a-a941-673ffa5fdb0a) | ![image](https://github.com/user-attachments/assets/f080f297-6be0-409b-b07f-b90557d4d7d3) |
|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|

| ![image](https://github.com/user-attachments/assets/78707a05-cc53-46e9-bd6d-67267d0b9b99) | ![image](https://github.com/user-attachments/assets/4636c08b-faf3-4c56-9b04-f8fba22713b0) |
|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|

| ![image](https://github.com/user-attachments/assets/6309301c-9e16-423e-b0d8-3780f1ab5cb0) | ![image](https://github.com/user-attachments/assets/2cb13adb-c7cc-429e-960f-d85d95b9c8d3) |
|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|

![image](https://github.com/user-attachments/assets/c4cdd78d-0012-4c91-9596-b3bd2a87aa7d)
![image](https://github.com/user-attachments/assets/678ae32b-4fdb-48f2-ae7c-0d9c53ea8c34)

CMOS Fabrication
| ![image](https://github.com/user-attachments/assets/b2bcc12b-fee0-4182-bde5-65c87dff4217) | ![image](https://github.com/user-attachments/assets/6b40e926-b694-46b9-afb8-b47a9ea5b788) |

![image](https://github.com/user-attachments/assets/05d316df-c5bd-4e2a-8e9d-8266d748a0de)
![image](https://github.com/user-attachments/assets/ffa4f4cd-4020-4db5-9bf2-60992b4f4d94)
![image](https://github.com/user-attachments/assets/d07cd9c0-126c-4507-8f81-78a5fc20f4cd)

![image](https://github.com/user-attachments/assets/dd7103e6-167f-4245-a9a4-6f83adfd83ad)


lab
![image](https://github.com/user-attachments/assets/180e79a9-56f7-4b96-8e80-8c7f25ce3245)

characterization
![image](https://github.com/user-attachments/assets/fde80788-a4e0-4af3-8c6d-b2c0cf5b56f0)
![image](https://github.com/user-attachments/assets/1ab0333e-0a4a-40fd-92ef-5a4e09f6d773)

DRC
![image](https://github.com/user-attachments/assets/dd4a30a6-5663-4fb1-886c-8dd5dce5070f)
































  

  

  





