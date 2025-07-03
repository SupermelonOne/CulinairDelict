//ExplosionPs
_ps = part_system_create();
part_system_draw_order(_ps, true);

//MyExplosion
var _ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_explosion);
part_type_size(_ptype1, 0.05, 0.1, -0.001, 0.005);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 0.5, 1, 0, 0);
part_type_direction(_ptype1, 0, 360, 0, 5);
part_type_gravity(_ptype1, 0, 13);
part_type_orientation(_ptype1, 0, 360, 0, 0, false);
part_type_colour3(_ptype1, $00CCFF, $0000C1, $E0E0E0);
part_type_alpha3(_ptype1, 1, 0.82, 0);
part_type_blend(_ptype1, true);
part_type_life(_ptype1, 16, 32);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -8, 8, -8, 8, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(_ps, _pemit1, _ptype1, 32);

part_system_position(_ps, x, y);

timer = 0;
activeTime = 1;
deleteTimer = 30;
if (!variable_instance_exists(id, "exploDamage")){
	exploDamage = 25;
	knockBack = 10;
}
image_xscale = 15;
image_yscale = 15;
