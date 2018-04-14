--local shared_data = require "main/modules/shared_data"
local save_file = sys.get_save_file("my_game", "gamedata")

function save_gamedata(self)
	-- Reset player score
	shared_data.player.score = 0
	-- Save gamedata
	if not sys.save(save_file, shared_data) then
		pprint("Gamedata not saved.")
	end
end

function load_gamedata(self)
	--	Load gamedata
	local gamedata = sys.load(save_file)
	if not next(gamedata)  then
		pprint("Gamedata empty")
	else
		pprint(gamedata)
		shared_data.player.highscore = gamedata.player.highscore
	end
end