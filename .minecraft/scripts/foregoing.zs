
val machinecase = <teslacorelib:machine_case>;
val ingotIron = <ore:ingotIron>;
val ingotSteel = <ore:ingotSteel>;
val ingotBronze = <ore:ingotBronze>;
val gearIron = <ore:gearIron>;
val redstone = <minecraft:redstone>;


recipes.remove(machinecase);
recipes.addShaped(machinecase,
	[[ingotSteel, redstone, ingotSteel],
	[ingotBronze, gearIron, ingotBronze],
	[ingotSteel, redstone, ingotSteel]]);

