
// ingots
var ingotIron		= <minecraft:iron_ingot>;
var ingotSteel		= <ore:ingotSteel>;
var ingotBlackIron	= <extendedcrafting:material>;

var coalCoke		= <ore:fuelCoke>;


// vanilla
var redstone		= <minecraft:redstone>;
var redstoneBlock	= <minecraft:redstone_block>;


// black iron
recipes.remove(ingotBlackIron);
recipes.addShaped(ingotBlackIron,
	[[coalCoke, coalCoke, coalCoke],
	[coalCoke, ingotIron, coalCoke],
	[coalCoke, coalCoke, coalCoke]]);


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
val collectorCrystal= <astralsorcery:blockcelestialcollectorcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.evorsio", crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}, collectorType: 1}});
val bucketStarlight = <liquid:astralsorcery.liquidstarlight>;

//.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia", crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}, collectorType: 1}})

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