require "hero/variables"

function play_animation(self, anim)
	if self.anim ~= anim then
		msg.post("#sprite", "play_animation", {id = anim})
		self.anim = anim
	end
end

function update_animation(self)
	--[[if invincible then
		flicker(self)
	else 
		go.set("#sprite", "tint", vmath.vector4(1, 1, 1, 1))
	end]]
	if self.velocity.x < 0 then
		play_animation(self, hash("hero_impact"))
	elseif self.ground_contact then
		if sliding then
			play_animation(self, hash("player_slide"))
		elseif rolling_over then
			play_animation(self, hash("roll_over"))
		else
			if self.velocity.x > 0 then
				play_animation(self, hash("player_runfast_black"))
			else
				play_animation(self, hash("player_run_black"))
			end
		end
	else
		if(self.velocity.y > 0) then
			play_animation(self, hash("player_jump"))
		else
			if self.velocity.y <= jump_break_speed then
				play_animation(self, hash("break_jump"))
			else
				play_animation(self, hash("player_fall"))
			end
		end
	end
end