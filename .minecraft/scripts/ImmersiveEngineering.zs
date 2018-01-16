
var brick_block 	= <minecraft:brick_block>;
var clay 			= <minecraft:clay_ball>;
var brick 			= <ore:ingotBrick>;
var brickNether 	= <ore:ingotBrickNether>;
var sandstone		= <ore:sandstone>;
var blazePowder		= <ore:powderBlaze>;
var dustCoal 		= <ore:dustCoal>;
var dustIron 		= <ore:dustIron>;
var silicon			= <ore:itemSilicon>;
var redstone 		= <minecraft:redstone>;
var enderPearl		= <minecraft:ender_pearl>;

var cokeBrick 		= <immersiveengineering:stone_decoration>;
var blastBrick 		= <immersiveengineering:stone_decoration:1>;


# Ingots
var ingotIron 				= <ore:ingotIron>;
var ingotCopper 			= <ore:ingotCopper>;
var ingotLead 				= <ore:ingotLead>;
var ingotSilver 			= <ore:ingotSilver>;
var ingotSteel 				= <immersiveengineering:metal:8>;
var ingotEnderium			= <thermalfoundation:material:167>;
var ingotSignalum			= <thermalfoundation:material:165>;


# Dusts
var dustLead				= <ore:dustLead>;
var dustPlatinum			= <ore:dustPlatinum>;
var dustCopper				= <ore:dustCopper>;
var dustTin 				= <ore:dustTin>;
var dustSilver 				= <ore:dustSilver>;




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
	[[	brickNether, 	brick, 			brickNether],
	[	brick, 			blazePowder,	brick],
	[	brickNether, 	brick, 			brickNether]]);



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

mods.immersiveengineering.ArcFurnace.addRecipe(ingotEnderium * 4, enderPearl * 4, null, 750, 1024, [dustLead * 3, dustPlatinum]);
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSignalum * 4, redstone * 10, null, 500, 1024, [dustCopper * 3, dustSilver]);