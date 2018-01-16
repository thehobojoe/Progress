




# Ingots
var ingotIron 		= <minecraft:iron_ingot>;
var ingotSteel		= <thermalfoundation:material:160>;
var ingotInvar		= <thermalfoundation:material:162>;
var ingotGraphite 	= <immersiveengineering:material:19>;


# Gears
var gearSteel		= <ore:gearSteel>;
var gearSilver		= <ore:gearSilver>;

# Dusts
var dustIronIE		= <immersiveengineering:metal:18>;
var dustIronTF		= <thermalfoundation:material>;
var dustCoalTF 		= <thermalfoundation:material:768>;
var dustCharcoalTF 	= <thermalfoundation:material:769>;


# Misc
var glassHardened	= <ore:blockGlassHardened>;
var cokeTF			= <thermalfoundation:material:802>;
var redstone 		= <minecraft:redstone>;



// Replace recipe kit recipes

recipes.remove(<thermalfoundation:upgrade>);
recipes.addShaped("HardenedUpgrade", <thermalfoundation:upgrade>,
	[[null, ingotInvar, null],
	[ingotInvar, gearSteel, ingotInvar],
	[redstone, ingotInvar, redstone]]);

recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped("ReinforcedUpgrade", <thermalfoundation:upgrade:1>,
	[[ingotGraphite, ingotGraphite, ingotGraphite],
	[ingotGraphite, gearSilver, ingotGraphite],
	[glassHardened, ingotGraphite, glassHardened]]);


// remove induction smelter steel recipes
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIronTF, dustCoalTF * 4);
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIronTF, dustCharcoalTF * 4);

mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, dustCoalTF * 4);
mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, dustCharcoalTF * 4);

mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, cokeTF);
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIronTF, cokeTF);



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
recipes.remove(<thermalfoundation:material:165>);
recipes.remove(<thermalfoundation:material:167>);

