/// @description Collide with bullet

obj_game.points += 5;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

if instance_number(obj_small_rock) < 4
{
	direction = random(360);
	sprite_index = spr_rock_small;
	x = -100;
}

instance_destroy();