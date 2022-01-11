// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:52:41 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_c_addsub_as_invert_and_delay_0/brd_c_addsub_as_invert_and_delay_0_sim_netlist.v
// Design      : brd_c_addsub_as_invert_and_delay_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_c_addsub_as_invert_and_delay_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_c_addsub_as_invert_and_delay_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
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
  brd_c_addsub_as_invert_and_delay_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b1),
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
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module brd_c_addsub_as_invert_and_delay_0_c_addsub_v12_0_12
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
  (* C_HAS_CE = "0" *) 
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
  brd_c_addsub_as_invert_and_delay_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b0),
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
jNe3AuiiAuTxm4wTSreSl0iSPDbu3GvQYFCcev5uHvaenQB9lCODXQyaFrwPy+6J4pxgwTBN6Az7
MDVZmzzxznAZpYvr71vkUcbe/Ltz+chT+62f8sVtZIQekV3Mr7ZHSilmWbfSRJNGNdoNCxvjdtCs
M4e+MZuRDIMAQyjshieGP/JfNbOEf0EOLynOTV/OMsCYIDJoOHqTNsgqdQsUWZgz1lniRM/G48/d
K9d+uC6LzBZwhxAA328CJl7XhxvoUfqbDIZQnQmXzn/Px74MEV/PWIFyeH24vs2rn6mZTGwS2TXU
0Npnvwd99XoybHGLS2xfNeDOMadaORqY47uC8g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SqwQlksyEy445jKtGvLyvFm0lbnkYnkqyfkY/OlWLzW1os6rSf0L6+fy4kTIqLQvX9qtZkCmrTWf
arW2TY1xxdZCWyYD4DhVeNjjpb8DwSahTLBioctX82j4U1CNwa4pRa64BWZB8XABRkVRYdjkvjFl
9XovuV8TiOaEx+xdma6aAS5E1zDQuNeX57U7faybeeo1NMMtMm1acz1ClG2myHymLZSyRQPkG5nH
adVUACl9wVNSfCik9JQV2jkAfDmJIOIxqYNPjfW6b+vEnmLjpQ9NfsaCJ2UCPmhK8B+I5XY0FqbM
4YTgKjjaxUq91kaN+dpawqNzHaRl1XeGwP4R+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3856)
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
