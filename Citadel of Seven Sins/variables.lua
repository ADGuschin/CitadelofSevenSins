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
dashing_speed = 1500
dashing_distance = 150
default_hero_posititon_x = 300
going_back_speed = -70
current_position = 0

--Магазин
coins = 0
current_level_coins = 0

--Прогресс
current_progress = 0
level_progress = {
	["level"] = 100, 
	["1_story_collection"] = 10000}

--Переменные для включения логов
gui_log = false
--Индекс нынешнего уровня
index_of_current_level = 1 --Счет идет с 1
--Список уровней
list_of_levels = {"level", "1_story_collection"}
current_level = nil

language = {"EN", "РУ"}
language_state = 1