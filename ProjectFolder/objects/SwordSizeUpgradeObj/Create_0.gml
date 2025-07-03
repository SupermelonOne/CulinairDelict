/// @description cost setup
startX = x;
startY = y;

upgrade1Cost = 20;
upgrade2Cost = 50;
upgrade3Cost = 100;
upgrade4Cost = 150;
currentUpgradeCost = upgrade1Cost;

upgradeValue1 = 0.8;
upgradeValue2 = 1.0;
upgradeValue3 = 1.2;
upgradeValue4 = 1.5;


currentUpgrade = 0;
upgradeExplenation = "Increase the size of your main sword ";
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);

hover = false;