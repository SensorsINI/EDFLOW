# EDFLOW
EDFLOW is the first Event Driven FLOW camera. 
It combines Adaptive Block Matching Optical Flow (**ABMOF**) and Slice FAST (**SFAST**) corner detector on FPGA.
This repo includes the vivado project and Vivado HLS implementation of two core IPs (ABMOF and SFAST).

The purpose of this repo is for academic research. Commercial use is strictly forbiddened.

## Architecture
The platform of this project is called DAVIS346Zynq, its architecture is illustrated in the below figure.
![Hardware-Architecture-whole](https://user-images.githubusercontent.com/8357338/125651414-6b750f54-e071-42e0-a899-bac5fa00455c.jpg)
As shown in the figure, it is consists of 3 parts: daughter board, FPGA and USB PHY.
There are several IPs are implemented on FPGA including DAVIS controller, SPI master, SFAST, ABMOF, output switch, VGA, USB, etc.
The source code of all these IPs except DAVIS controller can be found in EDFLOW_Vivado_prj->IPs.
DAVIS controller is a private IP from iniVation.

## How to use it
It is very simple to restore the vivado project by simply running the script in the EDFLOW_Vivado_prj folder.
Detail steps are shown in that folder.
To synthesis the project, you should replace the DAVIS controller IP which is called testDVSSM in the schematic to your own DVS state machine.
Or you can simply design your own schematic with ABMOF, SFAST or some other IPs provided here.

## Website
Interested in this project, check https://sites.google.com/view/edflow21/home for more videos.

## Citation
M. LIu and T. Delbruck, “EDFLOW: Event Driven Optical Flow Camera with Keypoint Detection and Adaptive Block Matching,” IEEE Trans. Circuits Syst. Video Technol., vol. (under review), 2022. 

Please cite this paper if using data or code from this project.
