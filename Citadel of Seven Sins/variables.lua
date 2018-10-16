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
max_speed = 2000
acceleration = 7
score = 0
min_reborn_cost = 100
reborn_cost = 0

--Внутреигровые ресурсы
coins = 0
current_level_coins = 0
diamonds = 0

--Прогресс
current_progress = 0
max_level_progress = {
	["level_1"] = 200
}

--Прогресс босса
current_boss_progress = 0
max_boss_progress = {
	["level_1"] = 10000
}

--Переменные для включения логов
gui_log = false

--Индекс нынешнего уровня
index_of_current_level = 1 --Счет идет с 1

--Список уровней
list_of_levels = {"level_1"}
current_level = nil

--Текущий уровень прогресса
player_level = 1

skins = {
	type = 1,
	names = { "player_runfast_black", "player_fast_right", "test", "test", "test", "test", "test", "test" },
	shop = { true, false, false, false, false, false, false, false },
	cost = { 0, 50, 100, 150, 250, 300, 350, 400}
}

--Стоимость лутбоксов
lootboxes_cost = { 50, 100, 150, 200, 250, 300, 350, 400}

--Настройки языка
language_state = 1
language = {"EN", "РУ"}

--Локализация
localization = 	{
					death_screen =  {
										restart = { "Restart", "Заново" },
										menu = { "Menu", "Меню" },
										death_message = { "You died ^_^", "Ты умер ^_^" },
										continue_text = { "Continue", "Продолжить" },
										notenough_text = {"Not enough money :(", "Не достаточно монет :("},
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
										select = { "Select", "Выбрать" },
										selected = { "Selected", "Выбран" },
										skins = { "Skins", "Скины" },
										boxes = { "Boxes", "Лутбоксы" },
										msg = { money = { "Not enough money :(", "Не достаточно монет :(" }, success = { "Successful  purchase! :)", "Успешная покупка! :)" } },
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