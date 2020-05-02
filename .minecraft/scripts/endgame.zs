
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
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>,
	[[compressed4, compressed3, compressed4],
	[compressed3,  <astralsorcery:blockcelestialgateway>, compressed3],
	[compressed4, compressed3, compressed4]]);


// black iron
recipes.remove(ingotBlackIron);
mods.thermalexpansion.Transposer.addFillRecipe(ingotBlackIron, ingotIron, <liquid:coal> * 1000, 25000);



//Crafting Core
var craftingCore 	= <extendedcrafting:crafting_core>;
var resonantConv 	= <thermalfoundation:upgrade:35>;
var magicalWood 	= <extrautils2:decorativesolidwood:1>;
var netherStar		= <minecraft:nether_star>;
var crystalEnder 	= <ore:crystalEnder>;
var enderiumGlass 	= <thermalfoundation:glass_alloy:7>;
var blockTerrasteel	= <botania:storage:1>;
var blockPlatinum	= <thermalfoundation:storage:6>;
var blockSignalum	= <thermalfoundation:storage_alloy:5>;
var starlightInfuser= <astralsorcery:blockstarlightinfuser>;
var compactor 		= <thermalexpansion:machine:5>;
var chalice 		= <astralsorcery:blockchalice>;
var terraPlate 		= <botania:terraplate>;

recipes.remove(craftingCore);
mods.extendedcrafting.TableCrafting.addShaped(craftingCore, 
	[[resonantConv, magicalWood, netherStar, magicalWood, resonantConv], 
	[enderiumGlass, crystalEnder, blockTerrasteel, crystalEnder, enderiumGlass],
	[blockPlatinum, blockSignalum, starlightInfuser, blockSignalum, blockPlatinum], 
	[enderiumGlass, compactor, chalice, compactor, enderiumGlass], 
	[resonantConv, magicalWood, terraPlate, magicalWood, resonantConv]]);  


// Resonant cell frame
var resonantFrame 	= <thermalexpansion:frame:148>;
var cellFrame 		= <thermalexpansion:frame:128>;
var ingotTerrasteel = <botania:manaresource:4>;
var crystalCelestial= <astralsorcery:itemcelestialcrystal>;
var ingotPlatinum 	= <thermalfoundation:material:134>;
var blockEnderium 	= <thermalfoundation:storage_alloy:7>;
var cryoDuct 		= <thermaldynamics:duct_0:5>;
var alfglass 		= <botania:elfglass>;

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
var laserDrill 		= <industrialforegoing:laser_drill>;
var terraPick 		= <botania:terrapick>;
var fluxPick 		= <redstonearsenal:tool.pickaxe_flux>;
var neroPrime 		= <astralsorcery:blockborehead>;
var fysaPrime 		= <astralsorcery:blockborehead:1>;
var bucketStarlight = <liquid:astralsorcery.liquidstarlight>;

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
