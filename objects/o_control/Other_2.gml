
if !tillerinoEnable
	instance_deactivate_object(o_tillerinobot);
else 
	with o_tillerinobot exec(ircConnect);

ini_open("settings.ini");
var a;
for (a = 0; a < array_length_1d(o_ranks.ranks); a++)
	o_ranks.ranks[a] = ini_read_real("status", "status_"+string(a), bool(0));

for (a = 0; a < array_length_1d(o_modes.mods); a++)
	o_modes.mods[a] = ini_read_real("modes", "modes_"+string(a), bool(0));

for (a = 0; a < array_length_1d(o_geners.geners); a++)
	o_geners.geners[a] = ini_read_real("geners", "geners_"+string(a), bool(0));

for (a = 0; a < array_length_1d(o_languages.langs); a++)
	o_languages.langs[a] = ini_read_real("langs", "langs_"+string(a), bool(0));

for (a = 0; a < array_length_1d(o_mod.modsOn); a++)
	o_mod.modsOn[a] = ini_read_real("modsOn", "modsOn_"+string(a), bool(0));

o_type.type = ini_read_real("types", "type", 3);
ini_close();
