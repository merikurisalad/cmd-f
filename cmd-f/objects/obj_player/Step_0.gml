// class that is active every frame of the game

// represents when keys on keyboard are pressed
right_key = keyboard_check(vk_right); 
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// finds direction and applies move_spd
xspd = right_key - left_key * move_spd; 
yspd = down_key - up_key * move_spd;


// collisions
if place_meeting(x + xspd, y, obj_wall or obj_announcement) == true {
	xspd = 0; 
}
if place_meeting(x, y + yspd, obj_wall or obj_announcement) == true {
	yspd = 0;
}

// calculates next position on screen
x += xspd;	
y += yspd;