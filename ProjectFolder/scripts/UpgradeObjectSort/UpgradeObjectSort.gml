// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpgradeObjectSort(objNumber){
	switch(objNumber){
		case 0:
			return SwordDamUpgrObj;
		case 1:
			return SwordTimeUpgrObj;
		case 2:
			return SwordSizeUpgradeObj;
		case 3:
			return MoveSpeedUpgrObj;
		case 4:
			return InventorySizeUpgrObj;
		case 5:
			return SwordKnockBackUpgrObj;
		case 6:
			return ProjectileUpgradeObj;
	}
	
	return EmptyUpgradeObj;
}