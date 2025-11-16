require "trace"
require "variables"

function start()
	if not is_start_screen_enabled() then
		return
	end
	gui.set_enabled(gui.get_node("menu_box"), false)
	gui.set_enabled(gui.get_node("selectlevel_box"), true)
	gui.set_position(gui.get_node("selectlevel_box"), vmath.vector3(0,0,0))
	gui.set_position(gui.get_node("menu_box"), vmath.vector3(0,720,0))
	gui.set_position(gui.get_node("mode_window"), vmath.vector3(640,1000,0))

	msg.post("/menu#main_menu", "show")

	trace("Нажата кнопка старт, открыт интерфейс выбора уровня")
end

function exit()
	if not is_start_screen_enabled() then
		return
	end
	msg.post("@system:", "exit", {code = 0})
	trace("Нажата кнопка выхода, приложение закрыто")
end

function open_settings()
	if not is_in_start_screen() then
		return
	end
	exit_start_screen()

	msg.post("/menu#settings", "show")
	trace("Нажата кнопка настроек, скрыт интерфейс главного меню")
end

function back()
	if not is_in_select_level() then
		return
	end
	enter_start_screen()
	trace("Нажата кнопка назад, вернулись в главное меню")
end

function overrun()
	if not is_in_modal_window() then
		return
	end
	enter_current_level()
	trace("Нажата кнопка перепрохождения "..index_of_current_level.." уровня, уровень загружен")
end

function endless()
	if not is_in_modal_window() then
		return
	end
	enter_current_level()
	trace("Нажата кнопка бесконечного режима "..index_of_current_level.." уровня, уровень загружен")
end

function enter_current_level()
	in_game = true
	current_level = list_of_levels[index_of_current_level]
	msg.post("start_scene:/collection_proxy_controller#collection_proxy_controller", "load", {proxy = "#main_proxy"})
end

function close()
	if not (is_main_menu_enabled() and is_in_modal_window()) then
		return
	end
	gui.set_enabled(gui.get_node("mode_window"), false)
	gui.set_enabled(gui.get_node("selectlevel_box"), true)
	gui.set_enabled(gui.get_node("comingsoon_box"), false)
	gui.set_position(gui.get_node("mode_window"), vmath.vector3(640,1000,0))
	trace("Нажата кнопка закрыть, закрыто окно выбора режимов")
end

function select_level(level_number)
	msg.post("/menu#main_menu", "level_button", { level = level_number})
end

function enter_start_screen()
	gui.set_enabled(gui.get_node("menu_box"), true)
	gui.set_position(gui.get_node("menu_box"), vmath.vector3(0,0,0))

	msg.post("/menu#main_menu", "init")
end

function exit_start_screen()
	gui.set_enabled(gui.get_node("comingsoon_box"), false)
	gui.set_enabled(gui.get_node("box"), false)
end

function is_in_select_level()
	return gui.is_enabled(gui.get_node("selectlevel_box"))
end

function is_start_screen_enabled()
	return is_main_menu_enabled() and gui.is_enabled(gui.get_node("menu_box"))
end

function is_in_start_screen()
	return is_main_menu_enabled() and not is_in_modal_window()
end

function is_in_modal_window()
	return gui.is_enabled(gui.get_node("mode_window"))
end

function is_main_menu_enabled()
	return gui.is_enabled(gui.get_node("box"))
end