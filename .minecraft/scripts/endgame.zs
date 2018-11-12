
// ingots
var ingotIron		= <minecraft:iron_ingot>;
var ingotSteel		= <ore:ingotSteel>;
var ingotBlackIron	= <extendedcrafting:material>;

var coalCoke		= <ore:fuelCoke>;


// vanilla
var redstone		= <minecraft:redstone>;
var redstoneBlock	= <minecraft:redstone_block>;



// deep dark portal
var compressed3 = <extrautils2:compressedcobblestone:2>;
var compressed4 = <extrautils2:compressedcobblestone:3>;
recipes.remove(<extrautils2:teleporter>);
recipes.addShaped(<extrautils2:teleporter>,
	[[compressed4, compressed3, compressed4],
	[compressed3,  <astralsorcery:blockcelestialgateway>, compressed3],
	[compressed4, compressed3, compressed4]]);


// black iron
recipes.remove(ingotBlackIron);
mods.thermalexpansion.Transposer.addFillRecipe(ingotBlackIron, ingotIron, <liquid:coal> * 1000, 25000);



//Crafting Core
val craftingCore 	= <extendedcrafting:crafting_core>;

val resonantConv 	= <thermalfoundation:upgrade:35>;
val magicalWood 	= <extrautils2:decorativesolidwood:1>;
val netherStar		= <minecraft:nether_star>;
val crystalEnder 	= <ore:crystalEnder>;
val enderiumGlass 	= <thermalfoundation:glass_alloy:7>;
val blockTerrasteel	= <botania:storage:1>;
val blockPlatinum	= <thermalfoundation:storage:6>;
val blockSignalum	= <thermalfoundation:storage_alloy:5>;
val starlightInfuser= <astralsorcery:blockstarlightinfuser>;
val compactor 		= <thermalexpansion:machine:5>;
val chalice 		= <astralsorcery:blockchalice>;
val terraPlate 		= <botania:terraplate>;

recipes.remove(craftingCore);
mods.extendedcrafting.TableCrafting.addShaped(craftingCore, 
	[[resonantConv, magicalWood, netherStar, magicalWood, resonantConv], 
	[enderiumGlass, crystalEnder, blockTerrasteel, crystalEnder, enderiumGlass],
	[blockPlatinum, blockSignalum, starlightInfuser, blockSignalum, blockPlatinum], 
	[enderiumGlass, compactor, chalice, compactor, enderiumGlass], 
	[resonantConv, magicalWood, terraPlate, magicalWood, resonantConv]]);  


// Resonant cell frame
val resonantFrame 	= <thermalexpansion:frame:148>;
val cellFrame 		= <thermalexpansion:frame:128>;
val ingotTerrasteel = <botania:manaresource:4>;
val crystalCelestial= <astralsorcery:itemcelestialcrystal>;
val ingotPlatinum 	= <thermalfoundation:material:134>;
val blockEnderium 	= <thermalfoundation:storage_alloy:7>;
val cryoDuct 		= <thermaldynamics:duct_0:5>;
val alfglass 		= <botania:elfglass>;

mods.extendedcrafting.CombinationCrafting.addRecipe(resonantFrame, 250000000, 250000,
	cellFrame, 
	[
		ingotTerrasteel, 
		crystalCelestial,
		blockEnderium,
		blockPlatinum,
		resonantConv,
		cryoDuct,
		netherStar,
		alfglass
	]);


// Laser drill
val laserDrill 		= <industrialforegoing:laser_drill>;
val terraPick 		= <botania:terrapick>;
val fluxPick 		= <redstonearsenal:tool.pickaxe_flux>;
val neroPrime 		= <astralsorcery:blockborehead>;
val fysaPrime 		= <astralsorcery:blockborehead:1>;
val bucketStarlight = <liquid:astralsorcery.liquidstarlight>;

recipes.remove(laserDrill);
mods.extendedcrafting.CombinationCrafting.addRecipe(laserDrill, 1000000000, 500000,
	resonantFrame, 
	[
		cryoDuct,
		resonantConv,
		terraPick,
		fluxPick,
		neroPrime,
		fysaPrime
	]);



// Reactor controller
val reactorController	= <bigreactors:reactorcontroller>;
val resonatingGem 		= <astralsorcery:itemcraftingcomponent:4>;
val blockSteel 			= <ore:blockSteel>;
val meController 		= <appliedenergistics2:controller>;
val reactorCasing 		= <bigreactors:reactorcasing>;

recipes.remove(reactorController);
mods.extendedcrafting.CombinationCrafting.addRecipe(reactorController, 500000000, 500000,
	meController, 
	[
		resonantConv,
		ingotTerrasteel,
		blockEnderium,
		blockSteel,
		resonatingGem
	]);


// Rector power tap
val reactorPowerTap 	= <bigreactors:reactorpowertaprf>;

recipes.remove(reactorPowerTap);
mods.extendedcrafting.CombinationCrafting.addRecipe(reactorPowerTap, 100000000, 500000,
	resonantFrame, 
	[
		resonantConv,
		cryoDuct,
		blockEnderium,
		blockSteel
	]);

// Reactor casing core
val reactorCasingCore 	= <bigreactors:reactorcasingcores>;
val rodSteel 			= <immersiveengineering:material:2>;
val graphiteBlock		= <ore:blockGraphite>;

recipes.remove(reactorCasingCore);
recipes.addShaped(reactorCasingCore,
	[[rodSteel, rodSteel, rodSteel],
	[rodSteel, graphiteBlock, rodSteel],
	[rodSteel, rodSteel, rodSteel]]);

// Reactor casing
val plateSteel			= <ore:plateSteel>;

recipes.remove(reactorCasing);
recipes.addShaped(reactorCasing * 2,
	[[plateSteel, plateSteel, plateSteel],
	[plateSteel, reactorCasingCore, plateSteel],
	[plateSteel, plateSteel, plateSteel]]);


// Reactor Fuel Rod
val reactorFuelRod 		= <bigreactors:reactorfuelrod>;
val ingotUranium 		= <ore:ingotUranium>;
val hardenedGlass 		= <ore:blockGlassHardened>;
val ingotGraphite 		= <ore:ingotGraphite>;

recipes.remove(reactorFuelRod);
recipes.addShaped(reactorFuelRod,
	[[hardenedGlass, ingotGraphite, hardenedGlass],
	[hardenedGlass, ingotUranium, hardenedGlass],
	[hardenedGlass, ingotGraphite, hardenedGlass]]);