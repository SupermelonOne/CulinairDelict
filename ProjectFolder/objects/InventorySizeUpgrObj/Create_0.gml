/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 15;
upgrade2Cost = 36;
upgrade3Cost = 100;
upgrade4Cost = 300;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 4;
upgradeValue2 = 5;
upgradeValue3 = 8;
upgradeValue4 = 10;

currentUpgrade = 0;

upgradeExplenation = "Increases your iventory space. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;