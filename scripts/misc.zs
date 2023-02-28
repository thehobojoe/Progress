import crafttweaker.api.recipe.FurnaceRecipeManager;

val empty = <item:minecraft:air>;

val stick = <item:minecraft:stick>;
val air = <item:minecraft:air>;
val planks = <tag:items:minecraft:planks>;
val iron_ingot = <item:minecraft:iron_ingot>;
val glass = <item:minecraft:glass>;
val diamond = <item:minecraft:diamond>;
val ender_eye = <item:minecraft:ender_eye>;
val blaze_rod = <item:minecraft:blaze_rod>;
val deepslate = <item:minecraft:deepslate>;

val steel_plate = <tag:items:c:steel_plates>;
val brass_plate = <tag:items:c:brass_plates>;


furnace.addRecipe("fleshtoleather", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 2.0, 100);

//You can also break it down into multiple lines as that may make it easier
craftingTable.addShaped("scaffolding_alt", <item:minecraft:scaffolding> * 4, [
    [stick, planks, stick],
    [stick, air, stick],
    [stick, air, stick]]);


// Extended drawer upgrades
var upgrade_t1 = <item:extended_drawers:t1_upgrade>;
var upgrade_t2 = <item:extended_drawers:t2_upgrade>;
var upgrade_t3 = <item:extended_drawers:t3_upgrade>;
var upgrade_t4 = <item:extended_drawers:t4_upgrade>;

craftingTable.remove(upgrade_t2);
craftingTable.addShaped("iron_drawer_upgrade", upgrade_t2, [
	[stick, stick, stick],
	[iron_ingot, upgrade_t1, iron_ingot],
	[stick, stick, stick]]);

craftingTable.remove(upgrade_t3);
craftingTable.addShaped("diamond_drawer_upgrade", upgrade_t3, [
	[stick, stick, stick],
	[diamond, upgrade_t2, diamond],
	[stick, stick, stick]]);

craftingTable.remove(upgrade_t4);
craftingTable.addShaped("end_drawer_upgrade", upgrade_t4, [
	[blaze_rod, stick, blaze_rod],
	[ender_eye, upgrade_t3, ender_eye],
	[blaze_rod, stick, blaze_rod]]);


// Mining dimensions
 
val mossy_cobble = <item:minecraft:mossy_cobblestone>;
val bone_withered = <item:architects_palette:withered_bone>;
val nether_bricks = <item:minecraft:nether_bricks>;
val glowstone = <item:minecraft:glowstone>;

craftingTable.remove(<item:mining_dims:mining_teleporter>);
craftingTable.remove(<item:mining_dims:caving_teleporter>);
craftingTable.remove(<item:mining_dims:climbing_teleporter>);
craftingTable.remove(<item:mining_dims:nethering_teleporter>);
craftingTable.remove(<item:mining_dims:hunting_teleporter>);

craftingTable.remove(<item:mining_dims:mining_portal_block>);
craftingTable.remove(<item:mining_dims:hunting_portal_block>);
craftingTable.remove(<item:mining_dims:caving_portal_block>);
craftingTable.remove(<item:mining_dims:nethering_portal_block>);
craftingTable.remove(<item:mining_dims:climbing_portal_block>);

craftingTable.addShaped("mining_portal", <item:mining_dims:mining_portal_block>, [
	[deepslate, deepslate, deepslate],
	[deepslate, diamond, deepslate],
	[deepslate, deepslate, deepslate]]);

craftingTable.addShaped("hunting_portal", <item:mining_dims:hunting_portal_block>, [
	[mossy_cobble, mossy_cobble, mossy_cobble],
	[mossy_cobble, bone_withered, mossy_cobble],
	[mossy_cobble, mossy_cobble, mossy_cobble]]);

craftingTable.addShaped("nethering_portal", <item:mining_dims:nethering_portal_block>, [
	[nether_bricks, nether_bricks, nether_bricks],
	[nether_bricks, glowstone, nether_bricks],
	[nether_bricks, nether_bricks, nether_bricks]]);


// nether chest
craftingTable.remove(<item:netherchest:nether_chest>);
craftingTable.addShaped("nether_chest_alt", <item:netherchest:nether_chest>, [
	[nether_bricks, nether_bricks, nether_bricks],
	[nether_bricks, <item:minecraft:blaze_rod>, nether_bricks],
	[nether_bricks, nether_bricks, nether_bricks]]);

craftingTable.remove(<item:moderndynamics:item_pipe>);
craftingTable.addShaped("item_pipe", <item:moderndynamics:item_pipe> * 4, [
	[steel_plate, glass, steel_plate],
	[empty, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:moderndynamics:fluid_pipe>);
craftingTable.addShaped("fluid_pipe", <item:moderndynamics:fluid_pipe> * 4, [
	[brass_plate, glass, brass_plate],
	[empty, empty, empty],
	[empty, empty, empty]]);
	
// ye olde exploding jetpack
craftingTable.addShapeless("shitsco_jetpack", <item:kubejs:shitsco_jetpack>, [
	<item:minecraft:potato>, <item:indrev:lazuli_flux_container_mk1>
]);


craftingTable.remove(<item:createaddition:diamond_grit_sandpaper>);
craftingTable.addShapeless("diamond_sandpaper", <item:createaddition:diamond_grit_sandpaper>, [
	<item:minecraft:paper>, <tag:items:c:diamond_dusts>]);

// catwalks
craftingTable.remove(<item:createdeco:gold_catwalk>);
craftingTable.addShaped("catwalk_gold", <item:createdeco:gold_catwalk> * 4, [
	[<tag:items:c:gold_bars>, empty, empty],
	[<tag:items:c:gold_plates>, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:createdeco:netherite_catwalk>);
craftingTable.addShaped("catwalk_netherite", <item:createdeco:netherite_catwalk> * 4, [
	[<tag:items:c:netherite_bars>, empty, empty],
	[<tag:items:c:plates/netherite>, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:createdeco:andesite_catwalk>);
craftingTable.addShaped("catwalk_andesite", <item:createdeco:andesite_catwalk> * 4, [
	[<tag:items:c:andesite_bars>, empty, empty],
	[<item:createdeco:andesite_sheet_metal>, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:createdeco:brass_catwalk>);
craftingTable.addShaped("catwalk_brass", <item:createdeco:brass_catwalk> * 4, [
	[<tag:items:c:brass_bars>, empty, empty],
	[<tag:items:c:brass_plates>, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:createdeco:cast_iron_catwalk>);
craftingTable.addShaped("catwalk_cast_iron", <item:createdeco:cast_iron_catwalk> * 4, [
	[<tag:items:c:cast_iron_bars>, empty, empty],
	[<tag:items:c:plates/cast_iron>, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:createdeco:iron_catwalk>);
craftingTable.addShaped("catwalk_iron", <item:createdeco:iron_catwalk> * 4, [
	[<item:minecraft:iron_bars>, empty, empty],
	[<tag:items:c:iron_plates>, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:createdeco:copper_catwalk>);
craftingTable.addShaped("catwalk_copper", <item:createdeco:copper_catwalk> * 4, [
	[<tag:items:c:copper_bars>, empty, empty],
	[<tag:items:c:copper_plates>, empty, empty],
	[empty, empty, empty]]);

craftingTable.remove(<item:createdeco:zinc_catwalk>);
craftingTable.addShaped("zinc_copper", <item:createdeco:zinc_catwalk> * 4, [
	[<tag:items:c:zinc_bars>, empty, empty],
	[<tag:items:c:plates/zinc>, empty, empty],
	[empty, empty, empty]]);