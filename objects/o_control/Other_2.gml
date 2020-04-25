
if !tillerinoEnable
	instance_deactivate_object(o_tillerinobot);
else 
	with o_tillerinobot exec(ircConnect);