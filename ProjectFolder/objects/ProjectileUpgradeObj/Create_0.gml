/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 40;
upgrade2Cost = 50;
upgrade3Cost = 70;
upgrade4Cost = 100;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 10;
upgradeValue2 = 7;
upgradeValue3 = 5;
upgradeValue4 = 3;

currentUpgrade = 0;

upgradeExplenation = "Increases your iventory space. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;