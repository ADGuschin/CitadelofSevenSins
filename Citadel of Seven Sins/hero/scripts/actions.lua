-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
require "hero/variables"
require "hero/scripts/states"
require "variables"

function pole_jump(self)
	if pole_in_range then
		set_state(self, "jumping")
		self.velocity.y = pole_jump_speed
		--self.velocity = pole_jump_vector
		pole_in_range = false
	end
end

function break_slide(self)--на всякий пожарный,	 можно перенести в апдейт
	current_slide_moment = 0
	sliding = false
	enable_running_state(self)
end

function break_roll(self)
	roll_allowed = false
	rolling_over = false
	lock_character = false
	enable_running_state(self)
end

function jump(self, speed)
	--print("jump")
	if self.ground_contact then	
		debug_jump = true
		set_state(self, "jumping")
		play_sound(self, "jump")
		if speed > jump_takeoff_speed then
			speed = jump_takeoff_speed
		end
		self.velocity.y = speed
	end
	if pause_state then
		msg.post("default:/training#training", "jump")
	end
end

function abort_jump(self)
	if self.velocity.y > 0 then
		self.velocity.y = self.velocity.y * 0.4
	end
end

function roll(self)
	if roll_allowed and not sliding then
		break_slide(self)
		play_sound(self, "roll")
		rolling_over = true
		enable_rolling_state(self)
	end
	if pause_state then
		break_slide(self)
		msg.post("default:/training#training", "roll")
	end
end

function dash(self)
	if not (sliding or rolling_over or dashing or going_back or roll_allowed or jumping) then
		print("dash")
		self.velocity.x = dashing_speed
		dashing = true
	end
end

function slide(self)
	if slide_cooldown == slide_cooldown_max and not rolling_over then
		if not pause_state then
			play_sound(self, "slide")
		end
		enable_sliding_state(self)
		current_slide_moment = 1
	end
	if pause_state then
		msg.post("default:/training#training", "slide")
	end
end

function jump_break(self)
	--if self.velocity.y > jump_break_speed then
	play_sound(self, "break_jump")
	self.velocity.y = jump_break_speed
	--end
end

function jump_break_slide(self)
	--if self.velocity.y > jump_break_speed then
	play_sound(self, "break_jump")
	self.velocity.y = jump_break_speed
	prepare_slide = true
	--end
end