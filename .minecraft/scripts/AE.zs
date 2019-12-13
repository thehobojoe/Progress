
//aliases
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val redstone = <minecraft:redstone>;
val nether_quartz = <minecraft:quartz>;
val diamond = <minecraft:diamond>;
var stone = <minecraft:stone>;

val sky_stone = <appliedenergistics2:smooth_sky_stone_block>;
val fluix_block = <appliedenergistics2:fluix_block>;
val enderium_block = <thermalfoundation:storage_alloy:7>;

val silicon = <ore:itemSilicon>;

val certus_quartz = <appliedenergistics2:material>;
val charged_quartz = <appliedenergistics2:material:1>;
val fluix_crystal = <appliedenergistics2:material:7>;

val circuit_quartz = <appliedenergistics2:material:16>;
val circuit_diamond = <appliedenergistics2:material:17>;
val circuit_gold = <appliedenergistics2:material:18>;

val proc_gold = <appliedenergistics2:material:22>;
val proc_quartz = <appliedenergistics2:material:23>;
val proc_diamond = <appliedenergistics2:material:24>;

val controller = <appliedenergistics2:controller>;

val empty_storage_disk = <appliedenergistics2:material:39>;
//these are the fluid components, 1k->64k in order
val babby_fluid_component = <appliedenergistics2:material:54>;
val wow_fluid_component = <appliedenergistics2:material:55>;
val chonk_fluid_component = <appliedenergistics2:material:56>;
val megachonk_fluid_component = <appliedenergistics2:material:57>;

//these are the complete cells, 1k->64k in order
val babby_fluid_cell = <appliedenergistics2:fluid_storage_cell_1k>;
val wow_fluid_cell = <appliedenergistics2:fluid_storage_cell_4k>;
val chonk_fluid_cell = <appliedenergistics2:fluid_storage_cell_16k>;
val megachonk_fluid_cell = <appliedenergistics2:fluid_storage_cell_64k>;

////////////////////////////
//  Alternate AE Recipes  //
////////////////////////////


//circuit recipes
recipes.addShaped(proc_gold,
   [[redstone, silicon, redstone],
	[  iron,    gold,     iron 	],
	[redstone, silicon, redstone]]);


recipes.addShaped(proc_diamond,
   [[redstone, silicon, redstone],
	[  iron,   diamond,   iron 	],
	[redstone, silicon, redstone]]);


recipes.addShaped(proc_quartz,
   [[redstone, silicon, redstone],
	[ iron, charged_quartz, iron],
	[redstone, silicon, redstone]]);



//fluix crystal
recipes.addShapeless("FluixCrystal", fluix_crystal * 2, [charged_quartz, nether_quartz, redstone]);


/////////////////////////////////
//  Fluid cell deconstruction  //
/////////////////////////////////


recipes.addShapeless("Babbys first disk",  babby_fluid_component, [babby_fluid_cell.transformReplace(empty_storage_disk)]);

recipes.addShapeless("wow a free disk",  wow_fluid_component, [wow_fluid_cell.transformReplace(empty_storage_disk)]);

recipes.addShapeless("a chonkin disk",  chonk_fluid_component, [chonk_fluid_cell.transformReplace(empty_storage_disk)]);

recipes.addShapeless("oh lord he coming",  megachonk_fluid_component, [megachonk_fluid_cell.transformReplace(empty_storage_disk)]);