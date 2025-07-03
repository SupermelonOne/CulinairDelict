/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 8;
upgrade2Cost = 15;
upgrade3Cost = 20;
upgrade4Cost = 50;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 1.2;
upgradeValue2 = 1.4;
upgradeValue3 = 1.6;
upgradeValue4 = 2.0;

currentUpgrade = 0;

upgradeExplenation = "Increases your sprint speed. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;