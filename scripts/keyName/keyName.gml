/// @param vCode
var vCode = argument0;

var vOut = "";

switch (vCode) {
	case vk_left: vOut = "Left"; break;
	case vk_right: vOut = "Right"; break;
	case vk_up: vOut = "Up"; break;
	case vk_down: vOut = "Down"; break;
	case vk_enter: vOut = "Enter"; break;
	case vk_escape: vOut = "Esc"; break;
	case vk_space: vOut = "Space"; break;
	case vk_shift: vOut = "Shift"; break;
	case vk_control: vOut = "Ctrl"; 
	case vk_lcontrol: vOut = "Ctrl"; break;
	case vk_alt: vOut = "Alt"; 
	case vk_lalt: vOut = "Alt"; break;
	case vk_backspace: vOut = "Bckspc"; break;
	case vk_tab: vOut = "Tab"; break;
	case vk_home: vOut = "Home"; break;
	case vk_end: vOut = "End"; break;
	case vk_delete: vOut = "Del"; break;
	case vk_insert: vOut = "Ins"; break;
	case vk_pageup: vOut = "PgUp"; break;
	case vk_pagedown: vOut = "PgDn"; break;
	case vk_pause: vOut = "Pause"; break;
	case vk_printscreen: vOut = "PrntScrn"; break;
	case vk_f1: vOut = "F1"; break;
	case vk_f2: vOut = "F2"; break;
	case vk_f3: vOut = "F3"; break;
	case vk_f4: vOut = "F4"; break;
	case vk_f5: vOut = "F5"; break;
	case vk_f6: vOut = "F6"; break;
	case vk_f7: vOut = "F7"; break;
	case vk_f8: vOut = "F8"; break;
	case vk_f9: vOut = "F9"; break;
	case vk_f10: vOut = "F10"; break;
	case vk_f11: vOut = "F11"; break;
	case vk_f12: vOut = "F12"; break;
	case vk_numpad0: vOut = "Num0"; break;
	case vk_numpad1: vOut = "Num1"; break;
	case vk_numpad2: vOut = "Num2"; break;
	case vk_numpad3: vOut = "Num3"; break;
	case vk_numpad4: vOut = "Num4"; break;
	case vk_numpad5: vOut = "Num5"; break;
	case vk_numpad6: vOut = "Num6"; break;
	case vk_numpad7: vOut = "Num7"; break;
	case vk_numpad8: vOut = "Num8"; break;
	case vk_numpad9: vOut = "Num9"; break;
	case vk_multiply: vOut = "( * )"; break;
	case vk_divide: vOut = "( / )"; break;
	case vk_add: vOut = "( + )"; break;
	case vk_subtract: vOut = "( - )"; break;
	case vk_decimal: vOut = "( . )"; break;
	case vk_tilde: vOut = "Tilde"; break; // vk_tilde = 192
	default: vOut = chr(vCode); break;
}

return vOut;