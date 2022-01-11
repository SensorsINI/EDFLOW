# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "USB_SPEED_HS" -parent ${Page_0}


}

proc update_PARAM_VALUE.USB_SPEED_HS { PARAM_VALUE.USB_SPEED_HS } {
	# Procedure called to update USB_SPEED_HS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USB_SPEED_HS { PARAM_VALUE.USB_SPEED_HS } {
	# Procedure called to validate USB_SPEED_HS
	return true
}


proc update_MODELPARAM_VALUE.USB_SPEED_HS { MODELPARAM_VALUE.USB_SPEED_HS PARAM_VALUE.USB_SPEED_HS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USB_SPEED_HS}] ${MODELPARAM_VALUE.USB_SPEED_HS}
}

