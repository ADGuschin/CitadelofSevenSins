--Логические переменные
sound = true
in_game = false
autorestart_state = false
pause_state = false
training_state = true

--Костыль
deathscreen_state = false
next_try_is_training = false

--Числовые переменные
slide_cooldown = 10
slide_time = 30
impact_speed = vmath.vector3(1000, 500,0)
gravity = -56
slide_cooldown_max = 10
jump_takeoff_speed = 1100
invincibility_max = 50
min_impact_speed = 1000
max_impact_speed = 1250
catch_up_speed = 25
jump_break_speed = -2000
max_speed = 2000
acceleration = 7
score = 0
min_reborn_cost = 100
reborn_cost = 0

coins = 0
current_level_coins = 0


multiplier_bar = 0
bar_maxs = {["x2"] = 10; ["x3"] = 15;}

score_multiplier = {["default"] = {multiplier = 1; next = "x2"; current = "default"};
["x2"] = {multiplier = 2; next = "x3"; current = "x2"};
["x3"] = {multiplier = 3; next = "none"; current = "x3"};} 
current_score_multiplier = score_multiplier["default"]

--Переменные для включения логов
gui_log = false
--Индекс нынешнего уровня
index_of_current_level = 1 --Счет идет с 1
--Список уровней
list_of_levels = {"level", "1_story_collection"}
current_level = nil

language = {"EN", "РУ"}
language_state = 1