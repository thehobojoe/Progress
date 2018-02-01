
var ingotIron		= <minecraft:iron_ingot>;
var redstone		= <minecraft:redstone>;



// gear cast from stone gear
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, <liquid:gold>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, <liquid:alubrass>, 144, true);

// food journal to lunchbox
recipes.addShapeless(<spiceoflife:lunchbox>, [<spiceoflife:bookfoodjournal>]);


furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh> * 4);
recipes.addShapeless(<minecraft:chest>, [<quark:custom_chest:*>]);

recipes.remove(<tconstruct:slimesling>);

//hopping bonsai
recipes.remove(<bonsaitrees:bonsaipot:1>);
recipes.addShaped("HoppingBonsai", <bonsaitrees:bonsaipot:1>,
	[[null, null, null],
	[<botania:manaresource:22>, <bonsaitrees:bonsaipot>, <botania:manaresource:22>],
	[<botania:manaresource:22>, <minecraft:hopper>, <botania:manaresource:22>]]);

//remove rftools teleporters
recipes.remove(<rftools:matter_transmitter>);
recipes.remove(<rftools:matter_receiver>);
recipes.remove(<rftools:matter_booster>);
recipes.remove(<rftools:dialing_device>);

// remove drum recipe
recipes.remove(<extrautils2:drum>);
recipes.remove(<extrautils2:drum:1>);
recipes.remove(<extrautils2:drum:2>);
recipes.remove(<extrautils2:drum:3>);

recipes.remove(<rftools:spawner>);
recipes.remove(<rftools:matter_beamer>);

recipes.remove(<rftools:coalgenerator>);

recipes.remove(<enderstorage:ender_storage>);
recipes.remove(<enderstorage:ender_pouch>);

// fluid crafting augment
recipes.remove(<thermalexpansion:augment:433>);

// alter shape card
recipes.remove(<rftools:shape_card:2>);
recipes.addShaped("quarry", <rftools:shape_card:2>, 
	[[redstone, <botania:elementiumpick>, redstone],
	[ingotIron, <rftools:shape_card>, ingotIron],
	[redstone, <botania:elementiumshovel>, redstone]]);


var stickIron 	= <ore:stickIron>;
// alter malisis ladder recipe
recipes.remove(<malisisdoors:rustyladder>);
recipes.addShaped("rustyLadder", <malisisdoors:rustyladder>,
	[[stickIron, null, stickIron],
	[ingotIron, ingotIron, ingotIron],
	[stickIron, null, stickIron]]);


// tallow fixes
furnace.remove(<rustic:tallow>);
recipes.remove(<rustic:candle>);
recipes.addShaped("candle", <rustic:candle>,
	[[null, <minecraft:string>, null],
	[null, <ore:tallow>, null],
	[null, ingotIron, null]]);