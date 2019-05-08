
var brick_block 	= <minecraft:brick_block>;
var clay 			= <minecraft:clay_ball>;
var brick 			= <ore:ingotBrick>;
var brickNether 	= <ore:ingotBrickNether>;
var sandstone		= <ore:sandstone>;
var blazePowder		= <ore:powderBlaze>;
var silicon			= <ore:itemSilicon>;
var redstone 		= <minecraft:redstone>;
var enderPearl		= <minecraft:ender_pearl>;
var obsidian		= <minecraft:obsidian>;
var gunpowder		= <minecraft:gunpowder>;

var cokeBrick 		= <immersiveengineering:stone_decoration>;
var blastBrick 		= <immersiveengineering:stone_decoration:1>;


# Ingots
var ingotIron 				= <ore:ingotIron>;
var ingotCopper 			= <ore:ingotCopper>;
var ingotTin 				= <ore:ingotTin>;
var ingotLead 				= <ore:ingotLead>;
var ingotSilver 			= <ore:ingotSilver>;
var ingotPlatinum 			= <ore:ingotPlatinum>;
var ingotAluminum 			= <ore:ingotAluminum>;
var ingotSteel 				= <immersiveengineering:metal:8>;
var ingotLumium				= <thermalfoundation:material:166>;
var ingotEnderium			= <thermalfoundation:material:167>;
var ingotSignalum			= <thermalfoundation:material:165>;


# Dusts
var dustLead				= <ore:dustLead>;
var dustPlatinum			= <ore:dustPlatinum>;
var dustCopper				= <ore:dustCopper>;
var dustTin 				= <ore:dustTin>;
var dustSilver 				= <ore:dustSilver>;
var dustCoal 				= <ore:dustCoal>;
var dustIron 				= <ore:dustIron>;
var dustGlowstone			= <minecraft:glowstone_dust>;

var rodIron 				= <immersiveengineering:material:1>;
var rodSteel 				= <immersiveengineering:material:2>;
var rodAluminum				= <immersiveengineering:material:3>;




//////////////////////
//  Basic  recipes  //
//////////////////////

recipes.remove(cokeBrick);
recipes.addShaped("CokeBrick", cokeBrick * 3, 
	[[	clay, 	brick, 		clay],
	[	brick, 	sandstone, 	brick],
	[	clay, 	brick, 		clay]]);


recipes.remove(blastBrick);
recipes.addShaped("BlastBrick", blastBrick * 3, 
	[[	brickNether, 	brick, 		brickNether],
	[	brick, 			gunpowder,	brick],
	[	brickNether, 	brick, 		brickNether]]);


// Rod recipes
recipes.remove(rodIron);
recipes.remove(rodSteel);
recipes.remove(rodAluminum);

recipes.addShapeless("rodIron", rodIron * 2, [ingotIron, ingotIron]);
recipes.addShapeless("rodSteel", rodSteel * 2, [<ore:ingotSteel>, <ore:ingotSteel>]);
recipes.addShapeless("rodAluminum", rodAluminum * 2, [ingotAluminum, ingotAluminum]);

///////////////////////
//  Crusher recipes  //
///////////////////////

mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:3>, <ore:crystalNetherQuartz>, 2000);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:2>, <ore:crystalCertusQuartz>, 2000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:sand>, <ore:gravel>, 1000);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 1000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:wheat_seeds>, <minecraft:wheat>, 500);



///////////////////////////
//  Arc furnace recipes  //
///////////////////////////

mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium * 4, dustPlatinum, null, 750, 1024, [dustLead * 3, enderPearl * 4], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium * 4, ingotPlatinum, null, 750, 1024, [ingotLead * 3, enderPearl * 4], "Alloying");

mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum * 4, dustSilver, null, 500, 1024, [dustCopper * 3, redstone * 9], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum * 4, ingotSilver, null, 500, 1024, [ingotCopper * 3, redstone * 9], "Alloying");

mods.immersiveengineering.ArcFurnace.addRecipe(ingotLumium * 4, dustSilver, null, 500, 1024, [dustTin * 3, dustGlowstone * 6], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(ingotLumium * 4, ingotSilver, null, 500, 1024, [ingotTin * 3, dustGlowstone * 6], "Alloying");


furnace.setFuel(<immersivepetroleum:material>, 1600);


////////////////////////
//  Squeezer recipes  //
////////////////////////

var meatPulp = <contenttweaker:meat_pulp>;

mods.immersiveengineering.Squeezer.addRecipe(meatPulp, <liquid:meat> * 200, <ore:listAllmeatraw>, 4096);
mods.immersiveengineering.Squeezer.addRecipe(meatPulp, <liquid:meat> * 100, <ore:listAllfishraw>, 4096);
mods.immersiveengineering.Squeezer.addRecipe(meatPulp, <liquid:meat> * 100, <ore:listAllfishfresh>, 4096);