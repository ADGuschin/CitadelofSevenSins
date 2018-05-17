local save_file = sys.get_save_file("Citadel of seven sins", "datafile")

shared_data = {
	player = {
		highscore = 0,
		score = 0
	},
	data = {
		training_state = true,
		autorestart_state = false,
		coins = 0
	},
	control = {
		options_swipe = true,
		options_touch = false
	},
	options = {
		sound = true,
		language_state = 1
	}
}

function save_gamedata(self)
	-- Save gamedata
	
	if sys.save(save_file, shared_data) then
		if gui_log then
			print("Геймдата сохранена")
			pprint(shared_data)
		end
	else
		print("Геймдата не сохранена")
	end
end

function load_gamedata(self)
	--	Load gamedata
	
	local gamedata = sys.load(save_file)

	if next(gamedata) then
		if gui_log then
			print("Геймдата загружена")
			print("Файл:")
			pprint(gamedata)
		end

		shared_data.player.highscore = gamedata.player.highscore
		
		if gamedata.data.coins then
			shared_data.data.coins = gamedata.data.coins
		end

		if gamedata.control then
			shared_data.control.options_swipe = gamedata.control.options_swipe
			shared_data.control.options_touch = gamedata.control.options_touch
		end

		if gamedata.options then
			shared_data.options.sound = gamedata.options.sound 
			shared_data.options.language_state = gamedata.options.language_state
		end
		
		shared_data.data.training_state = gamedata.data.training_state
		shared_data.data.autorestart_state = gamedata.data.autorestart_state
		
		if gui_log then
			print("Загруженное:")
			pprint(shared_data)
		end
	else
		print("Геймдата пуста")
		sys.save(save_file, shared_data)
	end
end