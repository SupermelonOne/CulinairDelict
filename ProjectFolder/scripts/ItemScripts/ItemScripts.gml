// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function CollectItem(itemID, itemWorth, playerID){
	if (playerID == 1){
		if (global.p1Inventory[global.p1Selected][0] == 0){
			global.p1Inventory[global.p1Selected][0] = itemID;
			global.p1Inventory[global.p1Selected][1] = itemWorth;	
		}
		else{
			for (i = 0; i < array_length(global.p1Inventory); i++){
				if (global.p1Inventory[i][0] == 0){
					global.p1Inventory[i][0] = itemID;
					global.p1Inventory[i][1] = itemWorth;	
					break;
				}	
			}
		}
	}
}

function DropItem(playerID){
	if (playerID == 1 && global.p1Inventory[global.p1Selected][0] != 0){

		SpawnItem(global.p1Inventory[global.p1Selected][1], global.p1Inventory[global.p1Selected][0], global.player.x, global.player.y, true, ItemObj);
		
		global.p1Inventory[global.p1Selected][0] = 0;
		global.p1Inventory[global.p1Selected][1] = 0;
		
	}
}

function SpawnItem(itemWorth, _itemID, _x, _y, thrownByPlayer, _object){
	if (_object == ItemObj){
		var spawnStruct = {
			dropped : true,
			moveSpeed : 2,
			sprite_index : ItemSprite(_itemID)
		}
	}
	else if (_object == EnergyCollectableObj || _object == UsableItem){
		var spawnStruct = {
			dropped : true,
			moveSpeed : 2
		}
	}

	variable_struct_set(spawnStruct, "worth", itemWorth);
	variable_struct_set(spawnStruct, "itemID", _itemID);
	if (thrownByPlayer){
		variable_struct_set(spawnStruct, "moveVector", new vector((mouse_x - global.player.x), (mouse_y - global.player.y)));
	}
	else{
		variable_struct_set(spawnStruct, "moveVector", new vector_random());
	}
	
	instance_create_depth(_x, _y, 0, _object, spawnStruct);
}


function ItemSprite(itemID){
	switch(itemID){
		case 1:
			return fork;
			break;
		case 2:
			return spoon;
			break;
		case 3:
			return kom;
			break;
		case 4:
			return haring;
			break;
		case 5:
			return cupSprt;
			break;
		case 6:
			return soeplepel;
			break;
		case 7:
			return BigBeanItemSprt;
			break;
			
			
			
			
		case 10001:
			return bomb;
			break;
		case 10002:
			return RopeSprt;
			break;
		case 10003:
			return MedkitSprt;
			break;
	}
}