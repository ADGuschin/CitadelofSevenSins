-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local paused = false;

function pause()
	paused = true
end

function unpause()
	paused = false;
end

function is_paused()
	return paused;
end