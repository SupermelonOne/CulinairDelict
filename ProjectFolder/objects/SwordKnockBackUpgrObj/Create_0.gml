/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 20;
upgrade2Cost = 30;
upgrade3Cost = 40;
upgrade4Cost = 50;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 1.5;
upgradeValue2 = 2;
upgradeValue3 = 2.5;
upgradeValue4 = 3;

currentUpgrade = 0;

upgradeExplenation = "Increase the knockback on your sword. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;