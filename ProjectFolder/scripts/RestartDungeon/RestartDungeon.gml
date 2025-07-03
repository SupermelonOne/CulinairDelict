// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RestartDungeon(){
	global.RestartDungeon = false;
	room_persistent = false;
	if (random_range(0, 100) < 0.01){
		room_goto(GlitchedDungeon);
	}
	else if ((global.dungeonLevel mod 4) == 0 && global.dungeonLevel != 0){
		room_goto(BossRoom1);
	}
	else{
		if (global.dungeonLevel < 0){
			room_goto(GlitchedDungeon);
		}
		else if (global.dungeonLevel <=4 && global.dungeonLevel >= 0){
			switch (choose(1, 2)){
				case 1:
				room_goto(Room1);
				break;
				case 2:
				room_goto(Room1);
				break;
			}	
		}
		else if(global.dungeonLevel > 4 && global.dungeonLevel <= 8){
			switch (choose(1, 2, 3)){
				case 1:
				room_goto(Room1);
				break;
				case 2:
				room_goto(Dungeon2);
				break;
				case 3:
				room_goto(GlitchedDungeon);
				break;
			}		
		}
		else if(global.dungeonLevel > 8){
			switch (choose(1, 2, 3)){
				case 1:
				room_goto(Room1);
				break;
				case 2:
				room_goto(Dungeon2);
				break;
				case 3:
				room_goto(GlitchedDungeon);
				break;
			}		
		}
	}

	
}