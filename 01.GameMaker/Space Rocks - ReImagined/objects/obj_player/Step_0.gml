/// @description Move event and shoot

if (keyboard_check(vk_up))
{
	motion_add(image_angle, 0.1);
}

if (keyboard_check(vk_down))
{
	motion_add(image_angle, -0.1);
}

if (keyboard_check(vk_left))
{
	image_angle += 4;
}

if (keyboard_check(vk_right))
{
	image_angle += -4;
}

// Don't leave the room
move_wrap(true, true, 0);

// Shoot at player location
if (mouse_check_button_pressed(mb_left))
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	
	if (powerup = 1)
	{
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 10;
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 10;
	}
	
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.8, 1.2));
}