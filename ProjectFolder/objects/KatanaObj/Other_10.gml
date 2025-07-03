var randomNumber = choose(1,2,3);
switch (randomNumber){
	case 1:
		audio_play_sound(SwordSwoosh1, 0, false, , , random_range(0.8, 1.2));
		break;
	case 2:
		audio_play_sound(SwordSwoosh2, 0, false, , , random_range(0.8, 1.2));
		break;
	case 3:
		audio_play_sound(SwordSwoosh3, 0, false, , , random_range(0.8, 1.2));
		break;

}