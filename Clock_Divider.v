`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2020 01:27:34 PM
// Design Name: 
// Module Name: Clock_Divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Clock_Divider(
input wire clk_100, // 100MHz
output reg clk_25 //1Hz
    );
localparam div_value = 1; // 25MHz???
// division_value = 100MHz/(2*desired) - 1
// counter
integer counter_value = 0;

always@ (posedge clk_100)// sensitivity list // rising edge 0-1
begin
    if (counter_value == div_value)
        counter_value <= 0; //reset value
    else
        counter_value <= counter_value+1; //count up
end

//divide clock
always@ (posedge clk_100)
begin
    if(counter_value == div_value)
        clk_25 <= ~clk_25; //flip signal
    
end
endmodule

