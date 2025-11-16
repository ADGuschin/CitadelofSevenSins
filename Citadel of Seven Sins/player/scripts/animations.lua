require "player/variables"

local current_order = 0

function get_animations()
	current_order = 0
	animations = {
		animation("slide"),
		animation("roll_over"),
		animation("dash"),
		animation("run"),
		animation("jump"),
		animation("ground_pound"),
		animation("fall")
	}
	table.sort(animations, compare_order)
	return animations
end

function animation(name)
	current_order = current_order + 1
	return {
		order=current_order,
		id=hash(name),
		is_applicable=_G["is_"..name]
	}
end

function compare_order(item1, item2)
	return item1.order < item2.order
end

function is_slide(self)
	return self.ground_contact and sliding
end

function is_roll_over(self)
	return self.ground_contact and rolling_over
end

function is_dash(self)
	return self.ground_contact and self.velocity.x > 0
end

function is_run(self)
	return self.ground_contact
end

function is_jump(self)
	return self.velocity.y > 0
end

function is_ground_pound(self)
	return self.velocity.y <= jump_break_speed
end

function is_fall(self)
	return true
end