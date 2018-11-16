
# Ingots
var ingotIron 		= <minecraft:iron_ingot>;
var ingotTin 		= <ore:ingotTin>;
var ingotSteel		= <ore:ingotSteel>;
var ingotInvar		= <ore:ingotInvar>;
var ingotLead 		= <ore:ingotLead>;
var ingotElectrum 	= <ore:ingotElectrum>;
var ingotGraphite 	= <immersiveengineering:material:19>;


# Gears
var gearSteel		= <ore:gearSteel>;
var gearSilver		= <ore:gearSilver>;
var gearElectrum	= <ore:gearElectrum>;
var gearBronze 		= <ore:gearBronze>;


# Dusts
var dustIronIE		= <immersiveengineering:metal:18>;
var dustIronTF		= <thermalfoundation:material>;
var dustCoalTF 		= <thermalfoundation:material:768>;
var dustCharcoalTF 	= <thermalfoundation:material:769>;


# TE Mats
var frame			= <thermalexpansion:frame:64>;
var servo			= <thermalfoundation:material:512>;
var fluiduct		= <thermaldynamics:duct_16:1>;


# TE Machines
var accumulator 	= <thermalexpansion:device>;


# Misc
var glassHardened	= <ore:blockGlassHardened>;
var cokeTF			= <thermalfoundation:material:802>;
var redstone 		= <minecraft:redstone>;
var bucket			= <minecraft:bucket>;
var plateSteel		= <ore:plateSteel>;
var glass 			= <ore:blockGlass>;
var diamond 		= <minecraft:diamond>;


// Device frame recipe
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>,
	[[ingotTin, glass, ingotTin],
	[glass, gearBronze, glass],
	[ingotTin, glass, ingotTin]]);


// Machine frame recipe
recipes.removeByRecipeName("thermalexpansion:frame");
recipes.addShaped("progress_machineframe", <thermalexpansion:frame>,
	[[ingotSteel, glass, ingotSteel],
	[glass, gearBronze, glass],
	[ingotSteel, glass, ingotSteel]]);


// Energy cell recipe
recipes.removeByRecipeName("thermalexpansion:frame_2");
recipes.addShaped("progress_cellframe", <thermalexpansion:frame:128>,
	[[ingotElectrum, glass, ingotElectrum],
	[glass, <thermalexpansion:frame>, glass],
	[ingotElectrum, glass, ingotElectrum]]);



// Replace recipe kit recipes
recipes.removeByRecipeName("thermalfoundation:upgrade");
recipes.addShaped("progress_hardenedupgrade", <thermalfoundation:upgrade>,
	[[null, ingotInvar, null],
	[ingotInvar, gearSteel, ingotInvar],
	[redstone, ingotInvar, redstone]]);

recipes.removeByRecipeName("thermalfoundation:upgrade_1");
recipes.addShaped("progress_reinforcedupgrade", <thermalfoundation:upgrade:1>,
	[[plateSteel, plateSteel, plateSteel],
	[ingotGraphite, gearSilver, ingotGraphite],
	[glassHardened, <ore:plateGold>, glassHardened]]);


// remove induction smelter steel recipes
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIronTF, dustCoalTF * 4);
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIronTF, dustCharcoalTF * 4);

mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, dustCoalTF * 4);
mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, dustCharcoalTF * 4);

mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, cokeTF);
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIronTF, cokeTF);


// Accumulator
recipes.removeByRecipeName("thermalexpansion:device");
recipes.addShaped("progress_accumulator", accumulator,
	[[null, bucket, null],
	[glass, fluiduct, glass],
	[bucket, servo, bucket]]);


// remove smelter alloying for enderium and signalum
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);


//////////////////////
// Redstone Arsenal //
//////////////////////
var dustFluxed = <redstonearsenal:material>;
var ingotFluxed = <redstonearsenal:material:32>;
var crystalFluxed = <redstonearsenal:material:160>;

// Remove fluxed blend recipe
recipes.remove(dustFluxed);
recipes.remove(crystalFluxed);
mods.thermalexpansion.InductionSmelter.removeRecipe(<redstonearsenal:material>, <minecraft:sand>);
//mods.thermalexpansion.InductionSmelter.removeRecipe(<redstonearsenal:material>, <minecraft:sand:1>);

////////////////////


// Slightly tweak dynamo 
var dynamoCompression = <thermalexpansion:dynamo:2>;
var dynamoReactant = 	<thermalexpansion:dynamo:3>;
var dynamoEnervation = 	<thermalexpansion:dynamo:4>;
var dynamoNumismatic = 	<thermalexpansion:dynamo:5>;

var coilTransmission = 	<thermalfoundation:material:514>;

var plateIron = <ore:plateIron>;
var plateTin = <ore:plateTin>;
var plateLead = <ore:plateLead>;
var plateCopper = <ore:plateCopper>;
var plateElectrum = <ore:plateElectrum>;
var plateConstantan = <ore:plateConstantan>;

var gearTin = <ore:gearTin>;
var gearLead = <ore:gearLead>;
var gearConstantan = <ore:gearConstantan>;

recipes.remove(dynamoCompression);
recipes.addShaped(dynamoCompression,
	[[null, coilTransmission, null],
	[plateIron, gearTin, plateIron],
	[plateTin, redstone, plateTin]]);

recipes.remove(dynamoReactant);
recipes.addShaped(dynamoReactant,
	[[null, coilTransmission, null],
	[plateIron, gearLead, plateIron],
	[plateLead, redstone, plateLead]]);

recipes.remove(dynamoEnervation);
recipes.addShaped(dynamoEnervation,
	[[null, coilTransmission, null],
	[plateIron, gearElectrum, plateIron],
	[plateElectrum, redstone, plateElectrum]]);

recipes.remove(dynamoNumismatic);
recipes.addShaped(dynamoNumismatic,
	[[null, coilTransmission, null],
	[plateIron, gearConstantan, plateIron],
	[plateConstantan, redstone, plateConstantan]]);


// Remove boiler augment
recipes.remove(<thermalexpansion:augment:576>);


// Remove gear recipes
recipes.remove(<thermalfoundation:material:24>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:25>);
recipes.remove(<thermalfoundation:material:256>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:258>);
recipes.remove(<thermalfoundation:material:259>);
recipes.remove(<thermalfoundation:material:260>);
recipes.remove(<thermalfoundation:material:261>);
recipes.remove(<thermalfoundation:material:262>);
recipes.remove(<thermalfoundation:material:263>);
recipes.remove(<thermalfoundation:material:264>);
recipes.remove(<thermalfoundation:material:288>);
recipes.remove(<thermalfoundation:material:289>);
recipes.remove(<thermalfoundation:material:290>);
recipes.remove(<thermalfoundation:material:291>);
recipes.remove(<thermalfoundation:material:292>);
recipes.remove(<thermalfoundation:material:293>);
recipes.remove(<thermalfoundation:material:294>);
recipes.remove(<thermalfoundation:material:295>);

// Remove signalum and enderium recipes
recipes.remove(<thermalfoundation:material:103>);
recipes.remove(<thermalfoundation:material:101>);

