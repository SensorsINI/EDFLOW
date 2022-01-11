## Steps to restore the Vivado project
The versions of Vivado and Vivado HLS we used here are 2018.1. 
Other version is not guaranted for working property.
1. Launch Vivado, as shown by following figure.
![open_vivado](https://user-images.githubusercontent.com/8357338/149022689-e66649f7-22aa-4bbb-b4c7-bc3cf6adbb65.PNG)

2. Open "Tool" -> "Run tcl" and choose restore_EDFLOW.tcl
After waiting for a few minutes, it should open the EDFLOW project successfully. And if you open the block design, it should be like this:
![schematic](https://user-images.githubusercontent.com/8357338/149022711-3ab0729c-c191-4ec3-84c4-0a44d46e9d4d.PNG)

3. Synthesis the project.
To synthesis the project, you should replace the DAVIS controller IP which is called testDVSSM in the schematic to your own DVS state machine.
Or you can simply design your own schematic with ABMOF, SFAST or some other IPs provided here.
