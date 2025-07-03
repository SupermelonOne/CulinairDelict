var lootType = choose(1, 2);
switch (lootType){
	case 1:
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+20, false, UsableItem);
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+20, false, UsableItem);
		break;
	case 2:
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+20, false, UsableItem);
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+20, false, UsableItem);
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+20 , false, UsableItem);
		break;
}


/*
	case 1:
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+8, false, UsableItem);
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+8, false, UsableItem);
		break;
	case 2:
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+8, false, UsableItem);
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+8, false, UsableItem);
		SpawnItem(0, choose(10001, 10002, 10003), x+8, y+8, false, UsableItem);
		break;
*/