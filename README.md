# VGA-Demo-Verilog
<b><p>INSTRUCTIONS for VIVADO</b></p>
<p>Create a RTL Project in vivado. Load the verilog files and XDC files into the project. If you do not have an ARTY S7-25, you will need to edit the XDC constrains file to match your board.</p>

<b><p>INSTRUCTIONS FOR PINOUT</p></b>
<p>Make sure that R, G, and B are connected to pixel[3:0] on the fpga. Connect HSYNC to HSYNC and VSYNC to VSYNC. Connect the grounds (RGND BGND GGND SGND and GND) to the FPGA GND. Then connect the VGA cable to the breakout board and the monitor</p>
<p><a href="https://components101.com/connectors/vga-connector-pinout-datasheet">VGA Pinout and Info</a></p>



<b><p>BOARD REQUIREMENTS</b></p>
<p>The code is quite simple and therefore it could run on all modern boards with a 100MHz clock.</p>
