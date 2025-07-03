/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 10;
upgrade2Cost = 35;
upgrade3Cost = 100;
upgrade4Cost = 200;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 20;
upgradeValue2 = 14;
upgradeValue3 = 8;
upgradeValue4 = 1.0;

currentUpgrade = 0;

upgradeExplenation = "Decreases the sword cooldown. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;