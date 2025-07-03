// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GenerateTile(hor, ver, obj){
	
	var object = EMPTYOBJECT;
	
	switch(obj){
		case -6:
			object = damagingFloor;
			break;
		case -5:
			object = TreasureChestObj;
			break;
		case -4:
			object = CrateObj;
			break;
		case -3:
			object = HardRockObj;
			break;
		case -2:
			object = RockObj;
			break;
		case -1:
			if (room == Room1 || room == Dungeon2){
				object = BrickTileSetObj;	
			}
			else if (room == GlitchedDungeon){
				object = TileSetObj;	
			}
			break;
		case 0:
			if (room == Room1 || room == Dungeon2 || room == BossRoom1){
				object = BrickFloorObj;
			}
			if (room == GlitchedDungeon){
				object = BackRoomsFloorObj;
			}
			if (room == Elevator){
				object = BrickFloorObj;
			}
			break;
		case 1:
			switch(choose(1,2,3)){
				case 1:
					object = BeanEnemyObj;
					break;
				case 2:
					object = CreamFishObj;
					break;
				case 3:
					object = LongRangeEnemy;
					break;
				}
			break;
			
			
			
		
		case 52:
			object = ItemObj;
			break;
		case 53:
			object = EnergyCollectableObj;
			break;
		case 54:
			object = UsableItem;
			break;
	}
	if (obj > 0)
	{
		instance_create_depth(hor * global.cell_size + global.cell_size/2, ver * global.cell_size + global.cell_size/2, 0, object);
	}
	else{
		instance_create_depth(hor * global.cell_size, ver * global.cell_size, 0, object);
	}
		
	if (obj != -1 && obj != 0){
		if (room == Room1 || room == Dungeon2){
			instance_create_depth(hor * global.cell_size, ver * global.cell_size, 0, BrickFloorObj);
		}
		if (room == GlitchedDungeon){
			instance_create_depth(hor * global.cell_size, ver * global.cell_size, 0, BackRoomsFloorObj);
		}
	}
}