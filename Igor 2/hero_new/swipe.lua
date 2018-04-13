-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local beginX
local beginY
local endX
local endY

local startTime

local xDistance
local yDistance

go.property("minSwipeDistance", 50)
go.property("minSwipeTime", 0.4)

local bDoingTouch
local totalSwipeDistanceLeft
local totalSwipeDistanceRight
local totalSwipeDistanceUp
local totalSwipeDistanceDown

local touch

function checkSwipeDirection(self)
	if bDoingTouch == true then
		xDistance =  math.abs(endX - beginX) -- math.abs will return the absolute, or non-negative value, of a given value.
		yDistance =  math.abs(endY - beginY)
		if xDistance > yDistance then
			if beginX > endX then
				totalSwipeDistanceLeft = beginX - endX
				if totalSwipeDistanceLeft > self.minSwipeDistance then
					--action_id = hash("Swiped Left")
				end
			else
				totalSwipeDistanceRight = endX - beginX
				if totalSwipeDistanceRight > self.minSwipeDistance then
					print("Swiped Right")
				end
			end
		else
			if beginY > endY then
				totalSwipeDistanceUp = beginY - endY
				if totalSwipeDistanceUp > self.minSwipeDistance then
					action_id = "jump" --print("Swiped Down")
				end
			else
				totalSwipeDistanceDown = endY - beginY
				if totalSwipeDistanceDown > self.minSwipeDistance then
					action_id = "slide"--print("Swiped Up")
				end
			end
		end
	end
end

function init(self)
	msg.post(".", "acquire_input_focus")
end

function final(self)
	msg.post(".", "release_input_focus")
end

function on_input(self, action_id, action)
	if action_id == hash("touch") then
		touch = action.touch[1]
		if touch.pressed then
			bDoingTouch = true
			beginX = touch.x
			beginY = touch.y
			startTime = socket.gettime()
		end
		if touch.released  then
			endX = touch.x
			endY = touch.y
			if socket.gettime() - startTime < self.minSwipeTime then
				checkSwipeDirection(self);
			end
			bDoingTouch = false
		end
	end
end