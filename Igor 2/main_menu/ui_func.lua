normal_color = vmath.vector4(.9, .9, .9, 1)
hover_color = vmath.vector4(1, 1, 1, 1);
pressed_color = vmath.vector4(.6, .6, .6, 1);

function init_ui(self)
	for i, p in ipairs(self.nodes) do
		gui.set_color(p.node, normal_color);
	end
end

function handle_click(self, x, y)
	if self.picked_node ~= nil then
		if gui.pick_node(self.picked_node, x, y) then
			for i, p in ipairs(self.nodes) do
				if self.picked_node == p.node then
					p.action()
				end
			end
		end
		self.picked_node = nil
	end
end

function handle_press(self, x, y)
	for i, p in ipairs(self.nodes) do
		if gui.pick_node(p.node, x, y) then
    		self.picked_node = p.node
	    end
	end
end

function handle_hover(self, x, y)
	local node_picked = false; 
	if self.hovered_node ~= nil then
		gui.animate(self.hovered_node, "color", normal_color, gui.EASING_OUTQUAD, 0.1)
		self.hovered_node = nil
	end
	for i, p in ipairs(self.nodes) do
		if gui.pick_node(p.node, x, y) then
			self.hovered_node = p.node
			node_picked = true;
		end
	end
	if node_picked then
		if self.hovered_node == self.picked_node then
			gui.animate(self.picked_node, "color", pressed_color, gui.EASING_OUTQUAD, 0.1)
		elseif self.picked_node == nil then
			gui.animate(self.hovered_node, "color", hover_color, gui.EASING_OUTQUAD, 0.1)
		end
	end
end