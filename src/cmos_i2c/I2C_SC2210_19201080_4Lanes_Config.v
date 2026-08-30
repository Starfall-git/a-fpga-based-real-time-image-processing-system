/*-------------------------------------------------------------------------
This confidential and proprietary software may be only used as authorized
by a licensing agreement from CrazyBingo.www.cnblogs.com/crazybingo
(C) COPYRIGHT 2012 CrazyBingo. ALL RIGHTS RESERVED
Filename            :       I2C_SC130GS_12801024_Config.v
Author              :       CrazyBingo
Date                :       2019-08-03
Version             :       1.0
Description         :       I2C Configure Data of AR0135.
Modification History    :
Date            By          Version         Change Description
===========================================================================
19/08/03        CrazyBingo  1.0             Original
--------------------------------------------------------------------------*/

`timescale 1ns/1ns

module  I2C_SC2210_19201080_4Lanes_Config //1920*1080
(
    input       [8:0]   LUT_INDEX,
    output  reg [23:0]  LUT_DATA,
    output      [8:0]   LUT_SIZE
);
assign  LUT_SIZE = 57 + 1;

//-----------------------------------------------------------------
/////////////////////   Config Data LUT   //////////////////////////    
always@(*)
begin
    case(LUT_INDEX)
		0:	LUT_DATA = {16'h0100, 8'h00};
		1:	LUT_DATA = {16'h30eb, 8'h05};
		2:	LUT_DATA = {16'h30eb, 8'h0c};
		3:	LUT_DATA = {16'h300a, 8'hff};
		4:	LUT_DATA = {16'h300b, 8'hff};
		5:	LUT_DATA = {16'h30eb, 8'h05};
		6:	LUT_DATA = {16'h30eb, 8'h09};
		7:	LUT_DATA = {16'h0114, 8'h01};
		8:	LUT_DATA = {16'h0128, 8'h00};
		9:	LUT_DATA = {16'h012a, 8'h18};
		10:	LUT_DATA = {16'h012b, 8'h00};
		11:	LUT_DATA = {16'h0162, 8'h0d};
		12:	LUT_DATA = {16'h0163, 8'h78};
		13:	LUT_DATA = {16'h0164, 8'h02};
		14:	LUT_DATA = {16'h0165, 8'ha8};
		15:	LUT_DATA = {16'h0166, 8'h0a};
		16:	LUT_DATA = {16'h0167, 8'h27};
		17:	LUT_DATA = {16'h0168, 8'h02};
		18:	LUT_DATA = {16'h0169, 8'hb4};
		19:	LUT_DATA = {16'h016a, 8'h06};
		20:	LUT_DATA = {16'h016b, 8'heb};
		21:	LUT_DATA = {16'h016c, 8'h07};
		22:	LUT_DATA = {16'h016d, 8'h80};
		23:	LUT_DATA = {16'h016e, 8'h04};
		24:	LUT_DATA = {16'h016f, 8'h38};
		25:	LUT_DATA = {16'h0170, 8'h01};
		26:	LUT_DATA = {16'h0171, 8'h01};
		27:	LUT_DATA = {16'h0174, 8'h00};
		28:	LUT_DATA = {16'h0175, 8'h00};
		29:	LUT_DATA = {16'h0301, 8'h05};
		30:	LUT_DATA = {16'h0303, 8'h01};
		31:	LUT_DATA = {16'h0304, 8'h03};
		32:	LUT_DATA = {16'h0305, 8'h03};
		33:	LUT_DATA = {16'h0306, 8'h00};
		34:	LUT_DATA = {16'h0307, 8'h39};
		35:	LUT_DATA = {16'h030b, 8'h01};
		36:	LUT_DATA = {16'h030c, 8'h00};
		37:	LUT_DATA = {16'h030d, 8'h72};
		38:	LUT_DATA = {16'h0624, 8'h07};
		39:	LUT_DATA = {16'h0625, 8'h80};
		40:	LUT_DATA = {16'h0626, 8'h04};
		41:	LUT_DATA = {16'h0627, 8'h38};
		42:	LUT_DATA = {16'h455e, 8'h00};
		43:	LUT_DATA = {16'h471e, 8'h4b};
		44:	LUT_DATA = {16'h4767, 8'h0f};
		45:	LUT_DATA = {16'h4750, 8'h14};
		46:	LUT_DATA = {16'h4540, 8'h00};
		47:	LUT_DATA = {16'h47b4, 8'h14};
		48:	LUT_DATA = {16'h4713, 8'h30};
		49:	LUT_DATA = {16'h478b, 8'h10};
		50:	LUT_DATA = {16'h478f, 8'h10};
		51:	LUT_DATA = {16'h4793, 8'h10};
		52:	LUT_DATA = {16'h4797, 8'h0e};
		53:	LUT_DATA = {16'h479b, 8'h0e};
		54:	LUT_DATA = {16'h018c, 8'h08};
		55:	LUT_DATA = {16'h018d, 8'h08};
		56:	LUT_DATA = {16'h0309, 8'h08};
		57:	LUT_DATA = {16'h0100, 8'h01};

		default:LUT_DATA    =   {16'h0000, 8'h00};
    endcase
end

endmodule
