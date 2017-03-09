
var brick_block 	= <minecraft:brick_block>;

# Ingots
var ingotIron 				= <ore:ingotIron>;
var ingotCopper 			= <ore:ingotCopper>;
var ingotLead 				= <ore:ingotLead>;
var ingotSilver 			= <ore:ingotSilver>;
var ingotSteel 				= <immersiveengineering:metal:8>;
var ingotSteel304			= <progress:ingotSteel304>;


//steel 304
mods.immersiveengineering.ArcFurnace.addRecipe(ingotSteel304 * 9, <ore:blockSteel>, ingotSteel, 400, 512, [<ore:ingotNickel>]);
