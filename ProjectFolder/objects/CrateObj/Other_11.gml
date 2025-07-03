/// @description particles and sound
audio_play_sound(boxSnd, 0, false, ,,random_range(1, 1.4));
instance_create_depth(x+4, y+4, id.depth-1, RockParticleObj);
instance_create_depth(x+12, y+4, id.depth-1, RockParticleObj);
instance_create_depth(x+4, y+12, id.depth-1, RockParticleObj);
instance_create_depth(x+12, y+12, id.depth-1, RockParticleObj);