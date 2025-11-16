require "variables"

local sound_handler = {}
sound_handler.__index = sound_handler

function new_sound_hanlder() 
	local handler = {}
	handler = setmetatable(handler, sound_handler)
	handler:initialize()
	return handler
end

function sound_handler:initialize()
	self.sounds = {}
	self.sound_durations = {}
	self.default_sound_duration = 0.3
end

function sound_handler:add_sounds(sounds)
	for _, sound in pairs(sounds) do
		self:add_sound(sound)
	end
end

function sound_handler:add_sound(sound)
	self.sounds[hash(sound)]=sound
end

function sound_handler:reduce_durations(time)
	for sound, _ in pairs(self.sound_durations) do
		self.sound_durations[sound] = self.sound_durations[sound] - time
		if self.sound_durations[sound] < 0 then
			self.sound_durations[sound] = nil
		end
	end
end

function sound_handler:handle_message(message_type, message_action)
	if sound and message_type.id == "sfx" then
		self:play_sound(message_action)
	end
end

function sound_handler:play_sound(sound_hash)
	if self:is_not_playing(sound_hash) then
		self:play_sound_ungated(sound_hash)
	end
end

function sound_handler:is_not_playing(sound_hash)
	return self.sound_durations[sound_hash] == nil
end

function sound_handler:play_sound_ungated(sound_hash)
	sound = self.sounds[sound_hash]
	self.sound_durations[sound_hash] = self.default_sound_duration
	msg.post("#"..sound, "play_sound", {delay = 0, gain = 0.1})
end