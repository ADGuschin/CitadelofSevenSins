-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
require "hero/scripts/states"

function play_sound(self, sfx)
	if sfx ~= "step" then
		msg.post("sfx#sound_script", "stop_step")
		step_playing = false
	end
	msg.post("sfx#sound_script", sfx, {id = "sfx"})
end

