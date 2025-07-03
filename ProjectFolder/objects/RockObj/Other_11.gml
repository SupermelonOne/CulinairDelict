/// @description ok
audio_play_sound(rockHitSnd, 0, false, ,,random_range(0.9, 1.2));
instance_create_depth(x+4, y+4, id.depth-1, RockParticleObj);
instance_create_depth(x+12, y+4, id.depth-1, RockParticleObj);
instance_create_depth(x+4, y+12, id.depth-1, RockParticleObj);
instance_create_depth(x+12, y+12, id.depth-1, RockParticleObj);