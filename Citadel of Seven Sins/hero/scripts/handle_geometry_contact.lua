-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
function handle_geometry_contact(self, normal, distance)
	local proj = vmath.dot(self.correction, normal)
	local comp = (distance - proj) * normal
	self.correction = self.correction + comp
	go.set_position(go.get_position() + comp)
	if normal.y > 0.7 then
		self.ground_contact = true
	end
	proj = vmath.dot(self.velocity, normal)
	if proj < 0 then
		self.velocity = self.velocity - proj * normal
	end
end
