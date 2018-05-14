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
		print("xd"..xDistance)
		yDistance =  math.abs(endY - beginY)
		print("yd"..yDistance)
		if xDistance > yDistance then
			if beginX > endX then
				totalSwipeDistanceLeft = beginX - endX
				if totalSwipeDistanceLeft > self.minSwipeDistance then
					print("Swiped Left")
					action_id = hash("Swiped Left")
				end
			else
				totalSwipeDistanceRight = endX - beginX
				if totalSwipeDistanceRight > self.minSwipeDistance then
					print("Swiped Right")
					print(self)
				end
			end
		else
			if beginY > endY then
				totalSwipeDistanceUp = beginY - endY
				if totalSwipeDistanceUp > self.minSwipeDistance then
					print("Swiped Down")
				end
			else
				totalSwipeDistanceDown = endY - beginY
				if totalSwipeDistanceDown > self.minSwipeDistance then
					action_id = "slide"
					print("Swiped Up")
				end
			end
		end
	end
end

function init(self)
	--msg.post(self.url, "release_input_focus")
	msg.post(".", "acquire_input_focus")
end

function final(self)
	msg.post(".", "release_input_focus")
	--msg.post(self.url, "acquire_input_focus")
end

function swipe_on_input(self, action_id, action)
	if action_id == hash("click") then
		--touch = action.click
		if action.pressed then
			bDoingTouch = true
			beginX = action.x
			beginY = action.y
			startTime = socket.gettime()
		end
		if action.released  then
			endX = action.x
			endY = action.y
			if socket.gettime() - startTime < self.minSwipeTime then
				checkSwipeDirection(self);
			end
			bDoingTouch = false
		end
	end
end