--Логические переменные
sound = true
in_game = false
autorestart_state = false
pause_state = false
training_state = true
options_swipe = true
options_touch = false

--Костыль
deathscreen_state = false
next_try_is_training = false

--Числовые переменные
gravity = -65
slide_cooldown_max = 10
jump_takeoff_speed = 1300
invincibility_max = 50
min_impact_speed = 1250
max_impact_speed = 1400
catch_up_speed = 50
jump_break_speed = -2000
max_speed = 2000
acceleration = 8
score = 0
min_reborn_cost = 100
reborn_cost = 0

coins = 0
current_level_coins = 0

--Переменные для включения логов
gui_log = false
--Индекс нынешнего уровня
index_of_current_level = 1 --Счет идет с 1
--Список уровней
list_of_levels = {"level", "level2"}
current_level = nil

language = {"EU", "RU"}
language_state = 1