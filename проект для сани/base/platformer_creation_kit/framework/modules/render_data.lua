-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

default_aspect = 16/9

default_width = 1280;
default_height = 720;

width_ratio = 1;
height_ratio = 1;

w = 0;
h = 0;
x = 0;
y = 0;

function get_default_aspect()
	return default_aspect;
end

function set_w(value)
	w = value
end

function set_h(value)
	h = value
end

function set_x(value)
	x = value
end

function set_y(value)
	y = value
end

function get_w()
	return w;
end

function get_h()
	return h;
end

function get_x()
	return x;
end

function get_y()
	return y;
end

function calculate_size(width, height)
	x = 0
	y = 0
	w = width
	h = height
	local ratio = w / h;
	if(ratio < default_aspect) then
		h = w * (1 / default_aspect)
		y = (height - h) / 2;
	elseif (ratio > default_aspect) then
		w = h * default_aspect
		x = (width - w) / 2
	end
	width_ratio = width / 1280;
	height_ratio = height / 720;
end