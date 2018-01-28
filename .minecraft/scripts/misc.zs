
// gear cast from stone gear
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom>, <teslacorelib:gear_stone>, <liquid:gold>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom>, <teslacorelib:gear_stone>, <liquid:alubrass>, 144, true);

// food journal to lunchbox
recipes.addShapeless(<spiceoflife:lunchbox>, [<spiceoflife:bookfoodjournal>]);


furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh> * 4);
recipes.addShapeless(<minecraft:chest>, [<quark:custom_chest:*>]);

recipes.remove(<tconstruct:slimesling>);

//remove rftools teleporters
recipes.remove(<rftools:matter_transmitter>);
recipes.remove(<rftools:matter_receiver>);
recipes.remove(<rftools:matter_booster>);
recipes.remove(<rftools:dialing_device>);

// remove drum recipe
recipes.remove(<extrautils2:drum>);
recipes.remove(<extrautils2:drum:2>);
recipes.remove(<extrautils2:drum:3>);


recipes.remove(<rftools:spawner>);
recipes.remove(<rftools:matter_beamer>);

recipes.remove(<rftools:coalgenerator>);

recipes.remove(<enderstorage:ender_storage>);
recipes.remove(<enderstorage:ender_pouch>);