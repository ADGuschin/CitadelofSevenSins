-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
obstacle_table = {
	["init"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top"},
	["#obstacle_small"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top"},
	["#obstacle_tall"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top"},
	["#obstacle_top"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top"}
}    