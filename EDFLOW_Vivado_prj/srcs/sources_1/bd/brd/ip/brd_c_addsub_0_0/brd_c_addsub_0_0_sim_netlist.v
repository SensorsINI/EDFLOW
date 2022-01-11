// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul 20 21:18:52 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_c_addsub_0_0 -prefix
//               brd_c_addsub_0_0_ brd_c_addsub_0_0_sim_netlist.v
// Design      : brd_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_c_addsub_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_c_addsub_0_0
   (A,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CE;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  brd_c_addsub_0_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module brd_c_addsub_0_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [0:0]A;
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [0:0]S;

  wire \<const0> ;
  wire [0:0]A;
  wire CE;
  wire CLK;
  wire [0:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  brd_c_addsub_0_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HXV4h5+M0Gyv7vvpLcg9doICq0dE9GVjJBO+hNdPTJvgX0VGA4ugqBKlkEqGuOyKztRGzLB27s8X
6i5leC2InQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dAxa0GFtAgoazxeRmxSl0Yps/nJ8Rpb3lCs3dkGXEdmxjp4N5EFfyS7U0FLTPNVV4xnePCr4q647
L4KcUzdGFlWPqo/QF8lyz6PEdU6dW8BktZKhrZHQ5uhG7d/Bf0EOVUn0mzfj8sgbaKWZYTEDERK6
pLNcwS3fMTcRzexShzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFA2Sas20o42qyLKUfSMJZGJ7FMOuYDRWyURzBBH3n2Qkaa75HLaliBCTs00LUZYplObnmj1+ZAf
80sKN7qGXguQ1PwKDYYHAVh9l9yGVlyNwObLOec7nrtHIPRPZ1Am330sVZYMipFnG9PAZanD2fe4
zBKk26jw4HdRQmG3vM1SWF3vXt1VR+UBS5eMUwG6haQqtGIZWHz48uyl4zc44Tqr2H4sR+yo0gE9
bXUY7Oc0GQvnczTzBftbc9jGOvnoi8sVcybTki5B/gTVWkBqcYl+Bx+SSOCo+FyQZGBqrUAFnf1m
pKFCRJnXqs4g3cmrmEG2RflwrWfJCOs3QdUjPQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHIPCw3tqvASBeRc846RSvWMIU/QBgZYfNTkmzG9OlWqwIA3ukwCJx+dEAZCMyg/i7GW815EkwKE
ar/FOnRiTLMQpurIVTi3As1Sl6c1DkXq90HBljZSq18EFjvlH8nsGa0654mVCFQN3PiQfUfggiqD
LwP079R222U916zaDIMw6ZgRcbfM7bBAp73emqe6OC5mrt4mMGZ9AbQkGRU4iJeWX5x5zM0ev20/
2HCVT3rThYEK/hMu/29O6ZYpOwhKqVFUV8jaodAIgDRiYY0qd/CTZK9mvOgSUj0t6cJN4/Q/wVKt
mcOTr4F5A5rnCTva3pM2/SBekXOwQb01/rlfUQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4GJr0S0dl+C4k+rj1r/KaqPKn7XGNysYQlDBTRHxj0Zgto0TejuU3cSjQJkMo/IlhkL5vx3hSMx
8DXh0KGY4W7Mmk5SffBJgti7D1pd1YP3w0zgDKIAkTLpoXaZECn77Jp9JWvdxrSHUb44QeC0VkRr
TT67tMIjtV+eqkCUfUiCSGq39iRyI7EpdVInAevmPCNIG5K4rHLTX0aJWAbgDwBRaTpw7W4wOBUe
Kag07iTsJYfG9TBJdRao3h4g2IyFjrcf4tdYFjQEIGB4Vfxhy6K9JjnkkfxGJQ4A0VrJVKlHsJFv
1+MmwN5+h/oRYCFJgcCtGfttJc2/AOQ8JKB8cw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gW6aOcJbrDMK7JqUnzFxAaYM2DL8EnxF345IOLkdfKxGnLCsw0mROpfP26LD91CJidCf9vaqLHsN
jwsLktZ7qUykkQzv9vOvGkB2KoLh32fPvZjhbcdDei3fy9cH8haCHJCiSghwIIOfzcXDyQO7+mpH
LfBUho9v0PmfLkeqSuE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOgS+O+OWj8gVxfmdd2e+iTOOA4l1LloRJHtygw6wsU5a/FGoLxtLFOm39pCwOesAIo5cgP1cY7j
GMsvnPuTgP6YVNEPrLenO+0bM+rFgEpkVPDLGiQdrj+9tlcVifFJGGcDEFMtdjPm7SvdpsEh2Fzk
ZyTciJbc1vOSbmNUfL7f5SyT4X8NVQCnr4aIhzmrObrl+d/HXH5pWY0/wveklgGbBxwN3pI0aNdn
cY/a3XotdDTVTgdYnz9zaxscNhKuVHf6BpyCfI+XDdopSBDa7E47+Tot6Ck17VwjOOAKkqSNjD7+
HzzA77lmBhIrUxZnuOejS1O/VD/gmpze9ZPaeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cnHd5PXDZG9/sTbDcGdcimSZdigsLFzXdrKz/bW2x1/X7ARdLzDr46IadVEMKmsauxk1s3RNdxl2
1HE6Gf64Eq7MIXvR7seZnBPITjq3wDZQ96AfSrGRjdM+pHiIWpPCvdQrwCziC3gtMARWsdmSsGfJ
9hI+TRKKMMukHNL6mpGMZLMJxo7WIyFgVULMWU169Nkq0ob58oGJ2dO4BxkhFURfvaYnbh7upnFY
ycFcvqCEfCp261mrojDlgDZNmJJiYuc/tRGNHmE6rGfp3j3NHNYhlum7rrSaT0btpP2a67SN3dkk
zGijFEWmAvyBSk7CP6W2zpVUwsa/lmZgpPrgwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nHMRMC4SWzKY1MjNrW4ZGq3wC1vYaOC9oU3AvFIHOjX4loCCchEJ+PeRHUpmNZSWGfplwt8Q3rzL
ATbbFy1VnraHEoo/yc2JCIrasN6mZiNW5qfxTc+e7/YN4rwK1DyODnLJsFPNOc24NoBXyeMcib6k
0UhuvfcL9I2o22ULo1+roZmlj0D6/BE2fBDe1UZiN5TbMALbamKu3i0Ud/Z1AV+NdN0KRC5B+6e0
6DqpIoPHtUDiI9eVEGQojehW/6vcj//xLnu4Yg9T917us+7H3cCpnMoBvrdrzyI/WASfBgyHeGem
sqXQiHk4JsAkG6uIdFP20s8GZEOtkYh0XVGncQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3872)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
