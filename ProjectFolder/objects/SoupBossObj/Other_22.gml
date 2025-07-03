var randomNumber = choose(1,2,3);
switch (randomNumber){
	case 1:
		audio_play_sound(explosion1, 0, false, 0.5, , random_range(1.7, 2.0));
		break;
	case 2:
		audio_play_sound(explosion2, 0, false, 0.5, , random_range(1.7, 2.0));
		break;
	case 3:
		audio_play_sound(explosion3, 0, false, 0.5, , random_range(1.7, 2.0));
		break;

}