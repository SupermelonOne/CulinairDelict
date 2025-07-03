var exploStruct = {
	exploDamage : 10,
	knockBack : 10
}
var randomNumber = choose(1,2,3);
switch (randomNumber){
	case 1:
		audio_play_sound(explosion1, 0, false, , , random_range(0.8, 1.2));
		break;
	case 2:
		audio_play_sound(explosion2, 0, false, , , random_range(0.8, 1.2));
		break;
	case 3:
		audio_play_sound(explosion3, 0, false, , , random_range(0.8, 1.2));
		break;
}
instance_create_depth(x, y, 0, ExplosionAreaObj, exploStruct);