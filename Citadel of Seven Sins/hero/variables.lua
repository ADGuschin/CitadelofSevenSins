-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
alive = false
prepare_slide = false
flicker_mechanism = 0
step_playing = false
current_slide_moment = 0
sliding = false
isFirstTimeRun = true
invincibility = 0
pushed = false
invincible = false
rolling_over = false
dashing = false
pause = false
roll_allowed = false
lock_character = false
going_back = false
jumping = false
pole_in_range = false
pole_jump_speed = 1000
slide_cooldown = 10
slide_time = 30
impact_speed = vmath.vector3(1000, 500,0)
gravity = -56
slide_cooldown_max = 10
jump_takeoff_speed = 1100
invincibility_max = 50
min_impact_speed = 1000
max_impact_speed = 1250
catch_up_speed = 25
jump_break_speed = -2000

dashing_speed = 1500
dashing_distance = 150
default_hero_posititon_x = 300
going_back_speed = -70
current_position = 0