/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 12;
upgrade2Cost = 75;
upgrade3Cost = 150;
upgrade4Cost = 400;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 30;
upgradeValue2 = 15;
upgradeValue3 = 10;
upgradeValue4 = 4.0;

currentUpgrade = 0;

upgradeExplenation = "Decreases the sword cooldown. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;