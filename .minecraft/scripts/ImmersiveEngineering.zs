
var brick_block 	= <minecraft:brick_block>;
var clay 			= <ore:itemClay>;
var brick 			= <ore:ingotBrick>;
var brickNether 	= <ore:ingotBrickNether>;
var sandstone		= <ore:sandstone>;
var blazePowder		= <ore:powderBlaze>;
var dustCoal 		= <ore:dustCoal>;
var dustIron 		= <ore:dustIron>;
var silicon			= <ore:itemSilicon>;
var redstone 		= <minecraft:redstone>;

var cokeBrick 		= <immersiveengineering:stone_decoration>;
var blastBrick 		= <immersiveengineering:stone_decoration:1>;

# Ingots
var ingotIron 				= <ore:ingotIron>;
var ingotCopper 			= <ore:ingotCopper>;
var ingotLead 				= <ore:ingotLead>;
var ingotSilver 			= <ore:ingotSilver>;
var ingotSteel 				= <immersiveengineering:metal:8>;
//var ingotSteel304			= <progress:ingotSteel304>;
//var ingotElecSteel			= <enderio:itemAlloy>;
//var ingotVibrant			= <enderio:itemAlloy:2>;
//var ingotEnergetic			= <enderio:itemAlloy:1>;
//var ingotPulsating			= <enderio:itemAlloy:5>;
//var ingotRedstoneAlloy		= <enderio:itemAlloy:3>;


///////////////////////////
//  Arc furnace recipes  //
///////////////////////////

//steel 304
//mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel304 * 10, <ore:blockSteel>, null, 400, 512, [<ore:ingotNickel>]);

//Vibrant alloy
//mods.immersiveengineering.ArcFurnace.addRecipe(ingotVibrant, ingotEnergetic, null, 400, 512, [<minecraft:ender_pearl>]);

//pulsating iron
//mods.immersiveengineering.ArcFurnace.addRecipe(ingotPulsating, ingotIron, null, 300, 512, [<minecraft:ender_pearl>]);

//Electrical Steel
//mods.immersiveengineering.ArcFurnace.removeRecipe(ingotElecSteel);
//mods.immersiveengineering.ArcFurnace.addRecipe(ingotElecSteel, ingotIron, null, 150, 512, [dustCoal, silicon]);
//mods.immersiveengineering.ArcFurnace.addRecipe(ingotElecSteel, dustIron, null, 150, 512, [dustCoal, silicon]);

//Redstone alloy
//mods.immersiveengineering.ArcFurnace.addRecipe(ingotRedstoneAlloy, redstone, null, 150, 512, [silicon]);

//quite clear glass
//mods.immersiveengineering.ArcFurnace.addRecipe(<enderio:blockFusedQuartz:1>, <minecraft:glass> * 1, null, 150, 512, [<minecraft:glass> * 2]);




///////////////////////
//  Crusher recipes  //
///////////////////////

//mods.immersiveengineering.Crusher.addRecipe(<enderio:itemMaterial>, <minecraft:sand>, 4000);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:3>, <ore:crystalNetherQuartz>, 2000);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:2>, <ore:crystalCertusQuartz>, 2000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:sand>, <ore:gravel>, 1000);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 1000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:wheat_seeds>, <minecraft:wheat>, 500);



recipes.remove(cokeBrick);
recipes.addShaped(cokeBrick * 3, 
	[[clay, brick, clay],
	[brick, sandstone, brick],
	[clay, brick, clay]]);


recipes.remove(blastBrick);
recipes.addShaped(blastBrick * 3, 
	[[brickNether, brick, brickNether],
	[brick, blazePowder, brick],
	[brickNether, brick, brickNether]]);