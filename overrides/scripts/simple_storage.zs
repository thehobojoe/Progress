craftingTable.remove(<item:toms_storage:ts.wireless_terminal>);
craftingTable.remove(<item:toms_storage:ts.adv_wireless_terminal>);
craftingTable.remove(<item:toms_storage:ts.level_emitter>);
craftingTable.remove(<item:toms_storage:ts.open_crate>);


val stick = <tag:items:c:wooden_rods>;
val planks = <tag:items:minecraft:planks>;
val copper_plate = <tag:items:c:copper_plates>;
val copper_ingot = <item:minecraft:copper_ingot>;
val wood_chest = <tag:items:c:wooden_chests>;
val steel_plate = <tag:items:c:steel_plates>;

val glass = <item:minecraft:glass>;
val diamond = <item:minecraft:diamond>;
val redstone_lamp = <item:minecraft:redstone_lamp>;
val comparator = <item:minecraft:comparator>;

val storage_terminal = <item:toms_storage:ts.storage_terminal>;
val crafting_terminal = <item:toms_storage:ts.crafting_terminal>;


craftingTable.remove(<item:toms_storage:ts.inventory_cable>);
craftingTable.addShaped("inventory_cable", <item:toms_storage:ts.inventory_cable> * 6, [
	[stick,			planks,		stick],
	[copper_plate,	wood_chest, copper_plate],
	[stick,			planks,		stick]]);

craftingTable.remove(<item:toms_storage:ts.inventory_proxy>);
craftingTable.addShaped("inventory_proxy", <item:toms_storage:ts.inventory_proxy>, [
	[stick,			copper_plate,	stick],
	[copper_plate,	wood_chest,		copper_plate],
	[stick,			copper_plate,	stick]]);

craftingTable.remove(storage_terminal);
craftingTable.addShaped("storage_terminal", storage_terminal, [
	[copper_plate,	comparator,		glass],
	[copper_plate,	redstone_lamp,	glass],
	[copper_plate,	comparator,		glass]]);
