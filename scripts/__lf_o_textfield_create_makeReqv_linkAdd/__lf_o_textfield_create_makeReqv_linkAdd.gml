/// __lf_o_textfield_create_makeReqv_linkAdd(arr)
//!#lambda linkAdd($)
var arr = argument0;
 {
			var unlink = "";
			for (var a = 0; a < array_length_1d(arr); a++) 
				if arr[a] == true 
					unlink += string(a)+" ";
			unlink = string_replace_all(unlink, " ", ",");
			unlink = string_delete(unlink, string_length(unlink), 1);
			return unlink;
		}