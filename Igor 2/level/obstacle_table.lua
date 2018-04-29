-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
obstacle_table = {
	["init"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#coll_2", "#obstacle_pipes"},
	["#obstacle_small"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3", "#obstacle_pipes"},
	["#obstacle_tall"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1","#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes"},
	["#obstacle_top"] = {"#obstacle_small", "#obstacle_tall", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes"},
	["#train_home"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#coll_1", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes"},
	["#coll_1"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#coll_3.1", "#coll_3.2", "#obstacle_pipes"},
	["#obstacle_jumps"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#coll_1", "#coll_2", "#coll_3", "#obstacle_pipes"},
	["#coll_2"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#obstacle_jumps", "#coll_3", "#obstacle_pipes"},
	["#coll_3"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes"},
	["#coll_3.1"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes"},
	["#coll_3.2"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#obstacle_pipes"},
	["#obstacle_pipes"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3", "#coll_3.1", "#coll_3.2", "#obstacle_pipes"}
}

grid_table = {
	["#obstacle_small"] = 480, 
	["#obstacle_tall"] = 320,
	["#obstacle_top"] = 320,
	["#train_home"] = 720,
	["#coll_1"] = 960,
	["#obstacle_jumps"] = 2400,
	["#coll_1"] = 1160,
	["#coll_2"] = 1280,
	["#coll_3"] = 1240,
	["#coll_3.1"] = 1240,
	["#coll_3.2"] = 1240,
	["#obstacle_pipes"] = 1400
}