/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 100;
upgrade2Cost = 9999999999;
upgrade3Cost = 150;
upgrade4Cost = 400;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 1;
upgradeValue2 = 2;
upgradeValue3 = 3;
upgradeValue4 = 4;

currentUpgrade = 0;

upgradeExplenation = "Make the arrows pathfind towards the exit. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;