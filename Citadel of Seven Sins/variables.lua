--Логические переменные
sound = true
in_game = false
autorestart_state = false
pause_state = false
training_state = true

--Костыль (Выпилить скорее всего)
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

--Внутреигровые ресурсы
coins = 0
current_level_coins = 0
diamonds = 0

--Выпилить
multiplier_bar = 0
bar_maxs = {["x2"] = 10; ["x3"] = 15;}
score_multiplier = {["default"] = {multiplier = 1; next = "x2"; current = "default"};
["x2"] = {multiplier = 2; next = "x3"; current = "x2"};
["x3"] = {multiplier = 3; next = "none"; current = "x3"};} 
current_score_multiplier = score_multiplier["default"]

--Переменные для включения логов
gui_log = false

--Список уровней
index_of_current_level = 1 --индекс текущего уровня (счет идет с 1)
list_of_levels = {"level", "1_story_collection"}
current_level = nil

--Текущий уровень прогресса
player_level = 2

--Настройки языка
language = {"EN", "РУ"}
language_state = 1

skins = {
	type = 1,
	names = { "player_runfast_black", "player_fast_right", "test", "test", "test", "test", "test", "test" },
	shop = { true, false, false, false, false, false, false, false },
	cost = { 0, 50, 100, 150, 250, 300, 350, 400}
}

--Стоимость лутбоксов
lootboxes_cost = { 50, 100, 150, 200, 250, 300, 350, 400}

--Локализация
localization = 	{
					death_screen =  {
										restart = { "Restart", "Заново" },
										menu = { "Menu", "Меню" },
										death_message = { "You died ^_^", "Ты умер ^_^" },
										continue_text = { "Continue", "Продолжить" },
										notenough_text = {"Not enough money :)", "Не достаточно монет :)"},
										score_message = {"Your score:", "Счет:"},
										highscore_message = {"NEW HIGHSCORE:", "НОВЫЙ РЕКОРД:"}
									},
					pause_screen =  {
										resume = { "Resume", "Продолжить" },
										menu = { "Menu", "Меню" }
									},
					score = 		{
										score_text = { "Score:", "Счет:" },
										highscore_text = { "Highscore:", "Рекорд:" }
									},
					settings = 		{
										language = { "Language:", "Язык:" },
										training = { "Tutorial:", "Обучение:" },
										autorestart = { "Autorestart:", "Авторестарт:" },
										logical_yes = {"yes", "да"},
										logical_no = {"no", "нет"}
									},
					shop = 			{
										price = { "Buy:", "Купить:" },
										donate = { "DONATION:", "ДОНАТ:" },
										back = { "Back", "Назад"}
									},
					main_menu = {
										start = { "Start", "Cтарт"},
										exit = { "Quit", "Выход"},
										level = { "Level ", "Уровень "},
										overrun_mode = { "Overrun", "Заново"},
										endless_mode = { "Endless", "Бесконечно"},
										back = { "Back", "Назад"},
										comingsoon = { "Coming soon..", "Скоро.."}
								}
									
				}