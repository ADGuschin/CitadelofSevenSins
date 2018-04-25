-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
obstacle_table = {
	["init"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1"},
	["#obstacle_small"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps"},
	["#obstacle_tall"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1","#obstacle_jumps"},
	["#obstacle_top"] = {"#obstacle_small", "#obstacle_tall", "#train_home", "#coll_1", "#obstacle_jumps"},
	["#train_home"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#coll_1"},
	["#coll_1"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top"},
	["#obstacle_jumps"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#coll_1"}
}

grid_table = {
	["#obstacle_small"] = 600, 
	["#obstacle_tall"] = 600,
	["#obstacle_top"] = 600,
	["#train_home"] = 1000,
<<<<<<< HEAD
	["#coll_1"] = 1200,
	["#obstacle_jumps"] = 3000
=======
>>>>>>> cc9506ca541550e0d2fd99f36412bfc3783748ee
}