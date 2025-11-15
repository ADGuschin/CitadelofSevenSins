require "main_menu.scripts.main_menu_controller"
require "collections"
require "variables"

function get_main_menu_nodes()
	local nodes = {}
	for node_id, node_handler in pairs(get_node_handlers()) do
		table.insert(nodes, get_node(node_id, node_handler))
	end
	return nodes
end

function get_node_handlers()
	return merge(get_base_node_handlers(), get_level_node_handlers())
end

function get_node(id, handler)
	return {
		node = gui.get_node(id),
		action=handler
	}
end

function get_base_node_handlers()
	return {
		start_button=start,
		exit_button=exit,
		settings_button=open_settings,
		shop_button=open_shop,
		back_button=back,
		overrun_button=overrun,
		endless_button=endless,
		close_button=close
		
	}
end
	
function get_level_node_handlers()
	local level_node_handlers = {}
	for level = 1, length(list_of_levels) do
		local id = get_select_level_node_id(level)
		local handler = get_select_level_node_handler(level)
		level_node_handlers[id] = handler
	end
	return level_node_handlers
end

function get_select_level_node_id(level)
	return "level_button"..level
end

function get_select_level_node_handler(level)
	return function()
		select_level(level)
	end
end