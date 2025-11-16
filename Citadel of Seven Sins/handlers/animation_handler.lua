function play_animation(self, anim)
	if is_already_playing(self, anim) then
		return
	end	
	msg.post("#sprite", "play_animation", {id = anim})
	self.anim = anim
end

function is_already_playing(self, animation)
	return self.anim == animation
end

function update_animation(self)
	if self.animations == nil then
		print("no animations, TODO error message")
		return
	end
	for _, animation in pairs(self.animations) do
		if animation.is_applicable(self) then
			play_animation(self, animation.id)
			return
		end
	end
end