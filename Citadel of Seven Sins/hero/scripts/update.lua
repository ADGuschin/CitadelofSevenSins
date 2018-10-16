-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
require "hero/variables"
require "hero/scripts/actions"
require "hero/scripts/states"
require "variables"


function slide_cooldown_tick(self)
	if slide_cooldown < slide_cooldown_max then
		slide_cooldown = slide_cooldown + 1
	end
end

function check_inv(self)
	if invincibility < invincibility_max then
		invincibility = invincibility + 1
	else
		invincible = false
	end
end

function check_slide(self)
	sliding = current_slide_moment > 0

	if sliding then
		current_slide_moment = current_slide_moment + 1
		slide_cooldown = 0
		if current_slide_moment == slide_time then
			break_slide(self)
		end
	end
end

function prepare_slide_update(self) 
	if prepare_slide and self.ground_contact then
		slide(self)
		prepare_slide = false
	end
end

function correct_x_pos(self, hero_position)
	if hero_position.x >= (default_hero_posititon_x + dashing_distance) then
		dashing = false 
		going_back = true
	end
	
	if going_back and hero_position.x > default_hero_posititon_x then
		self.velocity.x = going_back_speed
	end
	
	if going_back and hero_position.x < default_hero_posititon_x then
		going_back = false
		self.velocity.x = 0
	end
end

function impact_speed_change(self, dt)
	impact_speed.x = impact_speed.x + acceleration * dt
	if impact_speed.x > max_impact_speed then
		impact_speed.x = max_impact_speed
	elseif impact_speed.x < min_impact_speed then
		impact_speed.x = min_impact_speed
	end
end

function check_for_ground_contact(self)
	if not self.ground_contact then
		self.velocity.y = self.velocity.y + gravity
		if self.velocity.y < 0 then 
			set_state(self, "running")
		end
	else
		jumping = false
		lock_character = false
	end
end

function check_for_jump(self)
	if self.velocity.y ~= 0  then
		jumping = true
		if sliding then
			break_slide(self)
		end
		if rolling_over then
			break_roll(self)
		end
	end
end

function lock_character_update(self)
	if training_state then
		lock_character = training_state
	end
	if rolling_over then
		lock_character = true
	end
end