# EDFLOW
EDFLOW is the first Event Driven Optical Flow camera with integrated keypoint detection. 
It combines Adaptive Block Matching Optical Flow (__ABMOF__) and Slice FAST (__SFAST__) corner detector on FPGA.
This repo includes the vivado project and Vivado HLS implementation of two core IPs (ABMOF and SFAST).

The purpose of this repo is for academic research. Commercial use is strictly forbidden.

## Architecture
The platform of this project is called _DAVIS346Zynq_, its architecture is illustrated in the below figure.
![Hardware-Architecture-whole](https://user-images.githubusercontent.com/8357338/125651414-6b750f54-e071-42e0-a899-bac5fa00455c.jpg)
As shown in the figure, it is consists of 3 parts: daughter board, FPGA and USB PHY.
There are several IPs are implemented on FPGA including DAVIS controller, SPI master, SFAST, ABMOF, output switch, VGA, USB, etc.
The source code of all these IPs except DAVIS controller can be found in EDFLOW_Vivado_prj->IPs.
DAVIS controller is a private IP from iniVation.

## How to use it
It is very easy to restore the vivado project by simply running the script restore_EDFLOW.tcl in the EDFLOW_Vivado_prj folder.
Detail steps are shown in that folder.

## Website
Interested in this project, check https://sites.google.com/view/edflow21/home for videos and benchmarking code and data.

## Citation
@article{liu2022edflow,
  title={EDFLOW: Event Driven Optical Flow Camera with Keypoint Detection and Adaptive Block Matching},
  author={Liu, Min and Delbruck, Tobi},
  journal={IEEE Transactions on Circuits and Systems for Video Technology},
  year={2022},
  publisher={IEEE}
}

Please cite this paper if using data or code from this project.
