
//aliases
val iron = <item:minecraft:iron_ingot>;
val gold = <item:minecraft:gold_ingot>;
val redstone = <item:minecraft:redstone>;
val nether_quartz = <item:minecraft:quartz>;
val diamond = <item:minecraft:diamond>;

val silicon = <tag:items:c:silicon>;

val certus_quartz = <item:ae2:certus_quartz_crystal>;
val charged_quartz = <item:ae2:charged_certus_quartz_crystal>;
val fluix_dust = <item:ae2:fluix_dust>;

val proc_gold = <item:ae2:logic_processor>;
val proc_quartz = <item:ae2:calculation_processor>;
val proc_diamond = <item:ae2:engineering_processor>;


////////////////////////////
//  Alternate AE Recipes  //
////////////////////////////


//circuit recipes
craftingTable.addShaped("proc_gold_alt",
    proc_gold,
   [[redstone, silicon, redstone],
	[  iron,    gold,     iron 	],
	[redstone, silicon, redstone]]);


craftingTable.addShaped("proc_diamond_alt",
    proc_diamond,
   [[redstone, silicon, redstone],
	[  iron,   diamond,   iron 	],
	[redstone, silicon, redstone]]);


craftingTable.addShaped("proc_quartz_alt",
    proc_quartz,
   [[redstone, silicon, redstone],
	[ iron, charged_quartz, iron],
	[redstone, silicon, redstone]]);


//fluix crystal
craftingTable.addShapeless("fluix_crystal_alt", fluix_dust * 2, [charged_quartz, nether_quartz, redstone]);
