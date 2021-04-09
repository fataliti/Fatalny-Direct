
if !tillerinoEnable
	instance_deactivate_object(o_tillerinobot);
else 
	with o_tillerinobot exec(ircConnect);

ini_open("settings.ini");
for (var a = 0; a < array_length(o_mod.modsOn); a++)
	o_mod.modsOn[a] = ini_read_real("modsOn", "modsOn_"+string(a), bool(0));

o_ranks.item = ini_read_real("status", "status", -1);
o_modes.item = ini_read_real("status", "modes", -1);
o_geners.item = ini_read_real("status", "geners", -1);
o_languages.item = ini_read_real("status", "langs", -1);

o_type.type = ini_read_real("types", "type", 2);
ini_close();
