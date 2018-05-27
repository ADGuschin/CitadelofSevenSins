
obstacle_table = {
	["training"] = {"#training"},
	["#training"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#obstacle_pipes"},
	["init"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_small"] = {"#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3", "#obstacle_pipes","#obstacle_car"},
	["#obstacle_tall"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1","#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_top_kran"] = {"#obstacle_small", "#obstacle_tall", "#train_home", "#obstacle_jumps", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_kran"] = {"#obstacle_small", "#obstacle_tall", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#train_home"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#coll_1", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_1"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_jumps", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_jumps"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3", "#obstacle_pipes", "#obstacle_car"},
	["#coll_2"] = {"#obstacle_small", "#obstacle_tall", "#train_home", "#obstacle_jumps", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_3"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_3.1"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_3.2"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_pipes"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_car"},
	["#obstacle_car"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top_kran", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes"}
}

grid_table = {
	["#training"] = 3000,
	["#obstacle_small"] = 480, 
	["#obstacle_tall"] = 400,
	["#obstacle_top_kran"] = 400,
	["#train_home"] = 1000,
	["#obstacle_jumps"] = 2100,
	["#coll_1"] = 1400,
	["#coll_2"] = 1460,
	["#coll_3"] = 1240,
	["#coll_3.1"] = 1100,
	["#coll_3.2"] = 1240,
	["#obstacle_pipes"] = 1400,
	["#obstacle_car"] = 600,
	["#obstacle_kran"] = 600
}

pickups_param_table = {
	["#training"] = {
		count = 0, pickup_positions = {}
	},
	["#obstacle_small"] = {
		count = 1, pickup_positions = {
			[1] = {x = 80, y = 140}
		}
	}, 
	["#obstacle_tall"] = {
		count = 2, pickup_positions = {
			[1] = {x = 200, y = 600},
			[2] = {x = 45, y = 300}
		}
	},
	["#obstacle_top_kran"] = {
		count = 1, pickup_positions = {
			[1] = {x = 0, y = 350}
		}
	},
	["#train_home"] = {
		count = 2, pickup_positions = {
			[1] = {x = 240, y = 600},
			[2] = {x = 535, y = 200}
		}
	},
	["#coll_1"] = {
		count = 2, pickup_positions = {
			[1] = {x = 300, y = 350},
			[2] = {x = 900, y = 600}
		}
	},
	["#obstacle_jumps"] = {
		count = 3, pickup_positions = {
			[1] = {x = 30, y = 200},
			[2] = {x = 1650, y = 200},
			[3] = {x = 1070, y = 600}
		}
	},
	["#coll_2"] = {
		count = 1, pickup_positions = {
			[1] = {x = 960, y = 350},
			--[2] = {x = 200, y = 200}
		}
	},
	["#coll_3"] = {
		count = 2, pickup_positions = {
			[1] = {x = 360, y = 200},
			[2] = {x = 760, y = 200}
		}
	},
	["#coll_3.1"] = {
		count = 1, pickup_positions = {
			[1] = {x = 45, y = 400}
		}
	},
	["#coll_3.2"] = {
		count = 5, pickup_positions = {
			[1] = {x = 360, y = 200},
			[2] = {x = 760, y = 200},
			[3] = {x = 430, y = 400},
			[4] = {x = 200, y = 600},
			[5] = {x = 630, y = 600}
		}
	},
	["#obstacle_pipes"] = {
		count = 1, pickup_positions = {
			[1] = {x = 750, y = 100}
		}
	},
	["#obstacle_car"] = {
		count = 0, pickup_positions = {}
	},
	["#obstacle_kran"] = {
		count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 200, y = 200}
		}
	},
}