# EDFLOW
EDFLOW is the first Event Driven FLOW camera. 
It combines Adaptive Block Matching Optical Flow (**ABMOF**) and Slice FAST (**SFAST**) corner detector on FPGA.
This repo includes the vivado project and Vivado HLS implementation of two core IPs (ABMOF and SFAST).

The purpose of this repo is for academic research, commercial use is forbiddened.

## How to use it
The versions of Vivado and Vivado HLS we used here are 2018.1. 
Other version is not guaranted for working property.
1. Launch Vivado, as shown by following figure.
![open_vivado](https://user-images.githubusercontent.com/8357338/149022689-e66649f7-22aa-4bbb-b4c7-bc3cf6adbb65.PNG)

2. Open "Tool" -> "Run tcl" and choose restore_EDFLOW.tcl
After waiting for a few minutes, it should open the EDFLOW project successfully. And if you open the block design, it should be like this:
![schematic](https://user-images.githubusercontent.com/8357338/149022711-3ab0729c-c191-4ec3-84c4-0a44d46e9d4d.PNG)

The platform of this project is called DAVIS346Zynq, its architecture is illustrated in the below figure.
![Hardware-Architecture-whole](https://user-images.githubusercontent.com/8357338/125651414-6b750f54-e071-42e0-a899-bac5fa00455c.jpg)
As shown in the figure, it is consists of 3 parts: daughter board, FPGA and USB PHY.
There are several IPs are implemented on FPGA including DAVIS controller, SPI master, SFAST, ABMOF, output switch, VGA, USB, etc.
The source code of all these IPs except DAVIS controller can be found in EDFLOW_Vivado_prj->IPs.
DAVIS controller is a private IP from iniVation.

To synthesis the project, you should replace the DAVIS controller IP which is called testDVSSM in the schematic to your own DVS state machine.
Or you can simply design your own schematic with ABMOF, SFAST or some other IPs provided here.

## Website
Interested in this project, check https://sites.google.com/view/edflow21/home for more videos.

## Citation
M. LIu and T. Delbruck, “EDFLOW: Event Driven Optical Flow Camera with Keypoint Detection and Adaptive Block Matching,” IEEE Trans. Circuits Syst. Video Technol., vol. (under review), 2022. 

Please cite this paper if using data or code from this project.
