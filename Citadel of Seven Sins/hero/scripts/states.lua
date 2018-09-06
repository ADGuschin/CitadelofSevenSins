states = { "running",
"sliding",
"rolling_over",
"jumping",
"dead"
}

function set_state(self, state)
	for _, s in ipairs(states) do
		if (state ~= s) then
			msg.post("#"..s.."_state", "disable")
		else
			if (s ~= "dead") then
				msg.post("#"..s.."_state", "enable")
			end
		end
	end
end


function enable_rolling_state(self)
	set_state(self, "rolling_over")

end

function enable_sliding_state(self)
	set_state(self, "sliding")

end

function enable_running_state(self)
	set_state(self, "running")

end