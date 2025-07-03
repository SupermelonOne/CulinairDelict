/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 20;
upgrade2Cost = 100;
upgrade3Cost = 120;
upgrade4Cost = 140;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 0.5;
upgradeValue2 = 1.0;
upgradeValue3 = 1.5;
upgradeValue4 = 2.0;

currentUpgrade = 0;

upgradeExplenation = "Increases your sword damage. ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;