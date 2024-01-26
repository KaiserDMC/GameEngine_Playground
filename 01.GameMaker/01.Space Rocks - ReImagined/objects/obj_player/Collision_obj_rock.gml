/// @description Collide with Rock

if (powerup == 2) exit;

var _test = obj_rock.sprite_index;
var _index = spr_rock_small;
var _nex = spr_rock_big;

if (obj_rock.sprite_index == spr_rock_small)
{
	// TODO: Lose HP
}
else
{
	instance_destroy();
	obj_game.alarm[0] = 120;
	audio_play_sound(snd_lose, 0 ,false);
	effect_create_above(ef_firework, x, y, 1, c_white);
}