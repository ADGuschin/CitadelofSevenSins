local save_file = sys.get_save_file("Citadel of seven sins", "datafile")

shared_data = {
	player = {
		highscore = 0,
		score = 0
	},
	data = {
		training_state = false,
		autorestart_state = false,
	}
}

function save_gamedata(self)
	-- Save gamedata
	
	if sys.save(save_file, shared_data) then
		print("Геймдата сохранена")
		pprint(shared_data)
	else
		print("Геймдата не сохранена")
	end
end

function load_gamedata(self)
	--	Load gamedata
	
	local gamedata = sys.load(save_file)

	if next(gamedata) then
		print("Геймдата загружена")
		pprint(gamedata)
		
		shared_data.player.highscore = gamedata.player.highscore
		
		shared_data.data.training_state = gamedata.data.training_state
		shared_data.data.autorestart_state = gamedata.data.autorestart_state
	else
		print("Геймдата пуста")
		sys.save(save_file, shared_data)
	end
end