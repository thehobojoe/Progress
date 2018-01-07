

var brick_block 	= <minecraft:brick_block>;
var clay 			= <ore:itemClay>;
var brick 			= <ore:ingotBrick>;
var brickNether 	= <ore:ingotBrickNether>;
var sandstone		= <ore:sandstone>;
var blazePowder		= <ore:powderBlaze>;
var dustCoal 		= <ore:dustCoal>;
var dustIron 		= <ore:dustIron>;
var silicon			= <ore:itemSilicon>;
var redstoneTorch 	= <minecraft:redstone_torch>;

# Ingots
var ingotIron 				= <ore:ingotIron>;
var ingotCopper 			= <ore:ingotCopper>;
var ingotLead 				= <ore:ingotLead>;
var ingotSilver 			= <ore:ingotSilver>;
var ingotSteel 				= <immersiveengineering:metal:8>;
var ingotSteel304			= <progress:ingotSteel304>;
var ingotElecSteel			= <enderio:itemAlloy>;
var ingotVibrant			= <enderio:itemAlloy:2>;
var ingotEnergetic			= <enderio:itemAlloy:1>;

var chassis = <enderio:itemMachinePart>;
var farmingStation = <enderio:blockFarmStation>;
var powerMonitor = <enderio:blockPowerMonitor>;

recipes.remove(<enderio:blockSagMill>);
recipes.remove(<enderio:blockAlloySmelter>);

recipes.remove(farmingStation);
recipes.addShaped(farmingStation, 
	[[ingotSteel, <minecraft:diamond_hoe>, ingotSteel],
	[ingotSteel, <enderio:itemMachinePart>, ingotSteel],
	[<ore:manaDiamond>, <appliedenergistics2:material:22>, <ore:manaDiamond>]]);

recipes.remove(powerMonitor);
recipes.addShaped(powerMonitor, 
	[[null, redstoneTorch, null],
	[ingotSteel, chassis, ingotSteel],
	[null, redstoneTorch, null]]);






//////////////////////
// 	 IV's RECIPES   //
//////////////////////


var manaGlass = <botania:manaGlass>;
var darkSteel = <ore:ingotDarkSteel>;
var killerJoe = <enderio:blockKillerJoe>;
var poweredSpawner = <enderio:blockPoweredSpawner>;
var soulVial = <enderio:itemSoulVessel>;
var engProcessor = <appliedenergistics2:material:24>;
var calcProcessor = <appliedenergistics2:material:23>;
var soulBinder = <enderio:blockSoulBinder>;
var travelAnchor = <enderio:blockTravelAnchor>;
var conduitBinder = <enderio:itemMaterial:1>;
var travelStaff = <enderio:itemTravelStaff>;
var vacuumChest = <enderio:blockVacuumChest>;
var xpRod = <enderio:itemXpTransfer>;
var xpObelisk = <enderio:blockExperienceObelisk>;
var machineChassis = <enderio:itemMachinePart>;
var xpVacuum = <enderio:blockXPVacuum>;
var returnStaff = <enderio:itemRodOfReturn>;
var telePad = <enderio:blockTelePad>;
var dialingDevice = <enderio:blockDialingDevice>;

recipes.remove(killerJoe);
recipes.remove(poweredSpawner);
recipes.remove(soulVial);
recipes.remove(soulBinder);
recipes.remove(travelAnchor);
recipes.remove(travelStaff);
recipes.remove(vacuumChest);
recipes.remove(xpRod);
recipes.remove(xpObelisk);
recipes.remove(xpVacuum);
// recipes.remove(returnStaff);
// recipes.remove(telePad);
// recipes.remove(dialingDevice);
	
recipes.addShaped(killerJoe,
	[[darkSteel, darkSteel, darkSteel],
	[manaGlass, engProcessor, manaGlass],
	[manaGlass, manaGlass, manaGlass]]);

recipes.addShaped(poweredSpawner,
	[[darkSteel, <ore:itemSkull>, darkSteel],
	[darkSteel, <enderio:itemMachinePart>, darkSteel],
	[<ore:elvenDragonstone>, engProcessor, <ore:elvenDragonstone>]]);

recipes.addShaped(soulVial, 
	[[null, darkSteel, null],
	[manaGlass, null, manaGlass],
	[null, manaGlass, null]]);

recipes.addShaped(soulBinder,
	[[darkSteel, <enderio:blockEndermanSkull>, darkSteel],
	[<minecraft:skull:4>, <enderio:itemMachinePart>, <minecraft:skull:2>],
	[darkSteel, <minecraft:skull:0>, darkSteel]]);

recipes.addShaped(travelAnchor,
	[[<ore:ingotIron>, conduitBinder, <ore:ingotIron>],
	[conduitBinder, <ore:manaDiamond>, conduitBinder],
	[<ore:ingotIron>, conduitBinder, <ore:ingotIron>]]);

recipes.addShaped(travelStaff,
	[[null, null, <ore:manaPearl>],
	[null, darkSteel, null],
	[darkSteel, null, null]]);

recipes.addShaped(vacuumChest,
	[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<ore:ingotIron>, <ore:chest>, <ore:ingotIron>],
	[<ore:ingotIron>, <ore:manaPearl>, <ore:ingotIron>]]);

recipes.addShaped(xpRod,
	[[null, null, <ore:ingotElectrum>],
	[null, <ore:manaDiamond>, null],
	[<ore:ingotElectrum>, null, null]]);

recipes.addShaped(xpObelisk,
	[[null, xpRod, null],
	[null, <ore:ingotElectrum>, null],
	[<ore:ingotElectrum>, machineChassis, <ore:ingotElectrum>]]);

recipes.addShaped(xpVacuum,
	[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<ore:ingotIron>, xpRod, <ore:ingotIron>],
	[<ore:ingotIron>, <ore:manaDiamond>, <ore:ingotIron>]]);
	
// recipes.addShaped(returnStaff,
	// [[null, <ore:manaDiamond>, <ore:manaPearl>],
	// [null, <ore:ingotElectrum>, <ore:manaDiamond>],
	// [<ore:ingotElectrum>, null, null]]);
	
// recipes.addShaped(telePad,
	// [[<ore:manaGlass>, <ore:elvenDragonstone>, <ore:manaGlass>],
	// [darkSteel, travelAnchor, darkSteel],
	// [darkSteel, <ore:elvenDragonstone>, darkSteel]]);
	
// recipes.addShaped(dialingDevice,
	// [[null, <ore:manaGlass>, null],
	// [null, calcProcessor, null],
	// [darkSteel, <ore:elvenDragonstone>, darkSteel]]);