var randomNumber = choose(1,2,3);
switch (randomNumber){
	case 1:
		audio_play_sound(beansound1, 0, false, , , random_range(1.5, 2.0));
		break;
	case 2:
		audio_play_sound(beansound2, 0, false, , , random_range(1.5, 2.0));
		break;
	case 3:
		audio_play_sound(beansound3, 0, false, , , random_range(1.5, 2.0));
		break;
}