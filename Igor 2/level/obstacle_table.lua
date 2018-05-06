
obstacle_table = {
	["training"] = {"#training"},
	["#training"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#obstacle_pipes"},
	["init"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_small"] = {"#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3", "#obstacle_pipes","#obstacle_car"},
	["#obstacle_tall"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1","#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_top"] = {"#obstacle_small", "#obstacle_tall", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_kran"] = {"#obstacle_small", "#obstacle_tall", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#train_home"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#coll_1", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_1"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#obstacle_jumps", "#coll_3.1", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_jumps"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3", "#obstacle_pipes", "#obstacle_car"},
	["#coll_2"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#obstacle_jumps", "#coll_3.2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_3"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_3.1"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#coll_3.2"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#obstacle_pipes", "#obstacle_car"},
	["#obstacle_pipes"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_car"},
	["#obstacle_car"] = {"#obstacle_small", "#obstacle_tall", "#obstacle_top", "#train_home", "#coll_1", "#obstacle_jumps", "#coll_2", "#coll_3.1", "#coll_3.2", "#obstacle_pipes"}
}

grid_table = {
	["#training"] = 3000,
	["#obstacle_small"] = 480, 
	["#obstacle_tall"] = 320,
	["#obstacle_top"] = 320,
	["#train_home"] = 720,
	["#coll_1"] = 1200,
	["#obstacle_jumps"] = 2100,
	["#coll_1"] = 1260,
	["#coll_2"] = 1400,
	["#coll_3"] = 1240,
	["#coll_3.1"] = 1240,
	["#coll_3.2"] = 1240,
	["#obstacle_pipes"] = 1400,
	["#obstacle_car"] = 480,
	["#obstacle_kran"] = 320
}

pickups_param_table = {
	["#training"] = {
		powerup = true, count = 2, pickup_positions = {
		[1] = {x = 100, y = 200},
		[2] = {x = 100, y = 200}
		}
	},
	["#obstacle_small"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	}, 
	["#obstacle_tall"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#obstacle_top"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#train_home"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#coll_1"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#obstacle_jumps"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#coll_1"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#coll_2"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#coll_3"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#coll_3.1"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#coll_3.2"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#obstacle_pipes"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#obstacle_car"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
	["#obstacle_kran"] = {
		powerup = true, count = 2, pickup_positions = {
			[1] = {x = 100, y = 200},
			[2] = {x = 100, y = 200}
		}
	},
}