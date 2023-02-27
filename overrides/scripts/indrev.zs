val empty = <item:minecraft:air>;

val flint = <item:minecraft:flint>;
val glass = <item:minecraft:glass>;
val packed_ice = <item:minecraft:packed_ice>;
val redstone_dust = <item:minecraft:redstone>;
val bucket = <item:minecraft:bucket>;
val bucket_milk = <item:minecraft:milk_bucket>;
val gold_axe = <item:minecraft:golden_axe>;
val gold_hoe = <item:minecraft:golden_hoe>;
val diamond_sword = <item:minecraft:diamond_sword>;

val nikolite_ingot = <item:indrev:nikolite_ingot>;
val nikolite_dust = <item:indrev:nikolite_dust>;
val enriched_nikolite_ingot = <item:indrev:enriched_nikolite_ingot>;
val enriched_nikolite_dust = <item:indrev:enriched_nikolite_dust>;

val desh_ingot = <item:ad_astra:desh_ingot>;
val desh_plate = <item:ad_astra:desh_plate>;
val ostrum_ingot = <item:ad_astra:ostrum_ingot>;
val ostrum_plate = <item:ad_astra:ostrum_plate>;
val ostrum_block = <item:ad_astra:ostrum_block>;

val iron_plate = <tag:items:c:iron_plates>;
val copper_plate = <tag:items:c:copper_plates>;
val brass_plate = <tag:items:c:brass_plates>;
val steel_plate = <tag:items:c:steel_plates>;
val gold_plate = <tag:items:c:gold_plates>;
val tungsten_plate = <tag:items:c:tungsten_plates>;

val battery = <item:indrev:battery>;

val circuit_mk1 = <item:indrev:circuit_mk1>;
val circuit_mk2 = <item:indrev:circuit_mk2>;
val circuit_mk3 = <item:indrev:circuit_mk3>;
val circuit_mk4 = <item:indrev:circuit_mk4>;

val flux_cell_mk1 = <item:indrev:lazuli_flux_container_mk1>;
val flux_cell_mk2 = <item:indrev:lazuli_flux_container_mk2>;
val flux_cell_mk3 = <item:indrev:lazuli_flux_container_mk3>;
val flux_cell_mk4 = <item:indrev:lazuli_flux_container_mk4>;

val fisher_basic = <item:indrev:fisher_mk2>;
val fisher_imp = <item:indrev:fisher_mk3>;
val fisher_adv = <item:indrev:fisher_mk4>;

val dielectric_casing = <item:powah:dielectric_casing>;
val machine_block = <item:indrev:machine_block>;
val furnace = <item:minecraft:furnace>;
val blast_furnace = <item:minecraft:blast_furnace>;
val piston = <item:minecraft:piston>;
val mechanical_saw = <item:create:mechanical_saw>;
val netherite_drill = <item:indrev:netherite_drill_head>;
val trapdoor = <item:minecraft:iron_trapdoor>;
val fan = <item:indrev:fan>;

// upgrades
craftingTable.remove(<item:indrev:tier_upgrade_mk2>);
craftingTable.remove(<item:indrev:tier_upgrade_mk3>);
craftingTable.remove(<item:indrev:tier_upgrade_mk4>);

craftingTable.addShaped("mk2_upgrade", <item:indrev:tier_upgrade_mk2>, [
	[empty, 		brass_plate, 	empty],
	[brass_plate, 	circuit_mk2, 	brass_plate],
	[nikolite_ingot, brass_plate, 	nikolite_ingot]]);

craftingTable.addShaped("mk3_upgrade", <item:indrev:tier_upgrade_mk3>, [
	[empty, 					desh_plate, 	empty],
	[desh_plate, 				circuit_mk3, 	desh_plate],
	[enriched_nikolite_dust, 	desh_plate, 	enriched_nikolite_dust]]);

craftingTable.addShaped("mk4_upgrade", <item:indrev:tier_upgrade_mk4>, [
	[empty, 					ostrum_plate, 	empty],
	[ostrum_plate, 				circuit_mk4, 	ostrum_plate],
	[enriched_nikolite_ingot, 	ostrum_plate, 	enriched_nikolite_ingot]]);

craftingTable.addShaped("flux_cell_mk1", flux_cell_mk1, [
	[brass_plate, 	circuit_mk1, 		brass_plate],
	[battery, 		dielectric_casing, 	battery],
	[nikolite_dust, battery, 			nikolite_dust]]);
craftingTable.addShaped("flux_cell_mk2", flux_cell_mk2, [
	[brass_plate, 	circuit_mk2, 		brass_plate],
	[battery, 		flux_cell_mk1, 		battery],
	[nikolite_ingot, battery, 			nikolite_ingot]]);
craftingTable.addShaped("flux_cell_mk3", flux_cell_mk3, [
	[gold_plate, 				circuit_mk3, 	gold_plate],
	[battery, 					flux_cell_mk2, 	battery],
	[enriched_nikolite_dust, 	battery, 		enriched_nikolite_dust]]);
craftingTable.addShaped("flux_cell_mk4", flux_cell_mk4, [
	[tungsten_plate, 			circuit_mk4, 	tungsten_plate],
	[battery, 					flux_cell_mk3, 	battery],
	[enriched_nikolite_ingot, 	battery, 		enriched_nikolite_ingot]]);

flux_cell_mk1.addTooltip("Energy cell, a battery to store power");
flux_cell_mk2.addTooltip("Energy cell, a battery to store power");
flux_cell_mk3.addTooltip("Energy cell, a battery to store power");
flux_cell_mk4.addTooltip("Energy cell, a battery to store power");

craftingTable.addShaped("indrev_capsule", <item:indrev:capsule>, [
	[tungsten_plate, 	glass, 	tungsten_plate],
	[glass, 			empty, 	glass],
	[steel_plate, 		glass, 	steel_plate]]);

// generators
craftingTable.remove(<item:indrev:coal_generator_mk1>);
craftingTable.addShaped("coal_generator_mk1", <item:indrev:coal_generator_mk1>, [
	[furnace, 		circuit_mk1, 		furnace],
	[iron_plate, 	dielectric_casing, 	iron_plate],
	[iron_plate, 	battery, 			iron_plate]]);

craftingTable.addShaped("biomass_generator_mk3", <item:indrev:biomass_generator_mk3>, [
	[furnace, 		circuit_mk2, 		furnace],
	[steel_plate, 	dielectric_casing, 	steel_plate],
	[steel_plate, 	battery, 			steel_plate]]);

// machines
craftingTable.remove(<item:indrev:electric_furnace_mk1>);
craftingTable.remove(<item:indrev:pulverizer_mk1>);
craftingTable.remove(<item:indrev:compressor_mk1>);
craftingTable.remove(<item:indrev:compressor_factory_mk4>);
craftingTable.remove(<item:indrev:solid_infuser_mk1>);
craftingTable.remove(<item:indrev:sawmill_mk1>);
craftingTable.remove(<item:indrev:smelter_mk4>);
craftingTable.remove(<item:indrev:condenser_mk4>);
craftingTable.remove(<item:indrev:mining_rig_mk4>);
craftingTable.remove(<item:indrev:drill_bottom>);
craftingTable.remove(fisher_basic);
craftingTable.remove(fisher_imp);
craftingTable.remove(fisher_adv);

craftingTable.addShaped("furnace_mk1", <item:indrev:electric_furnace_mk1>, [
	[furnace, 		circuit_mk1, 	furnace],
	[brass_plate, 	machine_block, 	brass_plate],
	[brass_plate, 	battery, 		brass_plate]]);

craftingTable.addShaped("pulverizer_mk1", <item:indrev:pulverizer_mk1>, [
	[flint, 		circuit_mk1, 	flint],
	[steel_plate, 	machine_block, 	steel_plate],
	[steel_plate, 	battery, 		steel_plate]]);

craftingTable.addShaped("compressor_mk1", <item:indrev:compressor_mk1>, [
	[piston, 		circuit_mk1, 	piston],
	[steel_plate, 	machine_block, 	steel_plate],
	[steel_plate, 	battery, 		steel_plate]]);

craftingTable.addShaped("compressor_factory", <item:indrev:compressor_factory_mk4>, [
	[enriched_nikolite_ingot, 	circuit_mk4, 	enriched_nikolite_ingot],
	[tungsten_plate, 			machine_block, 	tungsten_plate],
	[tungsten_plate, 			battery, 		tungsten_plate]]);

craftingTable.addShaped("solid_infuser_mk1", <item:indrev:solid_infuser_mk1>, [
	[glass, 		circuit_mk1, 	glass],
	[brass_plate, 	machine_block, 	brass_plate],
	[brass_plate, 	battery, 		brass_plate]]);

craftingTable.addShaped("sawmill_mk1", <item:indrev:sawmill_mk1>, [
	[mechanical_saw, 	circuit_mk1, 	mechanical_saw],
	[iron_plate, 		machine_block, 	iron_plate],
	[iron_plate, 		battery, 		iron_plate]]);

craftingTable.addShaped("smelter_mk4", <item:indrev:smelter_mk4>, [
	[blast_furnace, 			circuit_mk4, 	blast_furnace],
	[enriched_nikolite_ingot, 	machine_block, 	enriched_nikolite_ingot],
	[steel_plate, 				battery, 		steel_plate]]);

craftingTable.addShaped("condenser_mk4", <item:indrev:condenser_mk4>, [
	[packed_ice, 	circuit_mk4, 	packed_ice],
	[copper_plate, 	machine_block, 	copper_plate],
	[copper_plate, 	battery, 		copper_plate]]);

craftingTable.addShaped("fluid_infuser_mk1", <item:indrev:fluid_infuser_mk1>, [
	[bucket, 		circuit_mk1, 	bucket],
	[ostrum_plate, 	machine_block, 	ostrum_plate],
	[ostrum_plate, 	battery, 		ostrum_plate]]);

craftingTable.addShaped("mining_computer", <item:indrev:mining_rig_mk4>, [
	[netherite_drill, 	circuit_mk4, 	netherite_drill],
	[tungsten_plate, 	machine_block, 	tungsten_plate],
	[tungsten_plate, 	battery, 		tungsten_plate]]);

// TODO: make this a big shaped crafting recipe
craftingTable.addShaped("mining_drill", <item:indrev:drill_bottom>, [
	[steel_plate, 	ostrum_plate, 	steel_plate],
	[steel_plate, 	ostrum_plate, 	steel_plate],
	[empty, 		steel_plate, 	empty]]);

craftingTable.addShaped("chopper_mk1", <item:indrev:chopper_mk1>, [
	[gold_axe, 		circuit_mk1, 	gold_axe],
	[copper_plate, 	machine_block, 	copper_plate],
	[copper_plate, 	battery, 		copper_plate]]);

craftingTable.addShaped("farmer_mk1", <item:indrev:farmer_mk1>, [
	[gold_hoe, 		circuit_mk1, 	gold_hoe],
	[iron_plate, 	machine_block, 	iron_plate],
	[iron_plate, 	battery, 		iron_plate]]);

craftingTable.addShaped("slaughter_mk1", <item:indrev:slaughter_mk1>, [
	[diamond_sword, 	circuit_mk1, 	diamond_sword],
	[brass_plate, 		machine_block, 	brass_plate],
	[brass_plate, 		battery, 		brass_plate]]);

craftingTable.addShaped("rancher_mk1", <item:indrev:rancher_mk1>, [
	[bucket_milk, 	circuit_mk1, 	bucket_milk],
	[brass_plate, 	machine_block, 	brass_plate],
	[brass_plate, 	battery, 		brass_plate]]);

// fisher, which is a special case for some reason
craftingTable.addShaped("fisher_basic", fisher_basic, [
	[trapdoor, 		circuit_mk2, 	trapdoor],
	[copper_plate, 	machine_block, 	copper_plate],
	[copper_plate, 	battery, 		copper_plate]]);

craftingTable.addShaped("fisher_imp", fisher_imp, [
	[enriched_nikolite_dust, 	circuit_mk3, 	enriched_nikolite_dust],
	[brass_plate, 				fisher_basic, 	brass_plate],
	[brass_plate, 				battery, 		brass_plate]]);

craftingTable.addShaped("fisher_adv", fisher_adv, [
	[enriched_nikolite_ingot, 	circuit_mk3, 	enriched_nikolite_ingot],
	[tungsten_plate, 			fisher_imp, 	tungsten_plate],
	[tungsten_plate, 			battery, 		tungsten_plate]]);


// factory pieces
craftingTable.remove(fan);
craftingTable.remove(<item:indrev:controller>);
craftingTable.remove(<item:indrev:duct>);
craftingTable.remove(<item:indrev:intake>);

craftingTable.addShaped("fan", fan, [
	[empty, 		iron_plate, 	empty],
	[iron_plate, 	empty, 			iron_plate],
	[empty, 		iron_plate, 	empty]]);

craftingTable.addShaped("factory_controller", <item:indrev:controller>, [
	[steel_plate, 	copper_plate, 	steel_plate],
	[copper_plate, 	circuit_mk1, 	copper_plate],
	[steel_plate, 	copper_plate, 	steel_plate]]);

craftingTable.addShaped("factory_duct", <item:indrev:duct>, [
	[empty, 	iron_plate, 	iron_plate],
	[empty, 	iron_plate, 	empty],
	[empty, 	iron_plate, 	empty]]);

craftingTable.addShaped("factory_intake", <item:indrev:intake>, [
	[steel_plate, 	fan, 			steel_plate],
	[steel_plate, 	empty, 			steel_plate],
	[steel_plate, 	steel_plate, 	steel_plate]]);


// drill baby drill
val stone_drill = <item:indrev:stone_drill_head>;
val iron_drill = <item:indrev:iron_drill_head>;
val diamond_drill = <item:indrev:diamond_drill_head>;

craftingTable.remove(<item:indrev:mining_drill_mk1>);
craftingTable.remove(<item:indrev:mining_drill_mk2>);
craftingTable.remove(<item:indrev:mining_drill_mk3>);
craftingTable.remove(<item:indrev:mining_drill_mk4>);

craftingTable.addShaped("mining_drill_mk1", <item:indrev:mining_drill_mk1>, [
	[nikolite_dust, stone_drill, 	nikolite_dust],
	[copper_plate, 	circuit_mk1, 	copper_plate],
	[copper_plate, 	battery, 		copper_plate]]);

craftingTable.addShaped("mining_drill_mk2", <item:indrev:mining_drill_mk2>, [
	[nikolite_ingot, iron_drill, 	nikolite_ingot],
	[brass_plate, 	circuit_mk2, 	brass_plate],
	[brass_plate, 	battery, 		brass_plate]]);

craftingTable.addShaped("mining_drill_mk3", <item:indrev:mining_drill_mk3>, [
	[enriched_nikolite_dust, 	diamond_drill, 	enriched_nikolite_dust],
	[steel_plate, 				circuit_mk3, 	steel_plate],
	[steel_plate, 				battery, 		steel_plate]]);

craftingTable.addShaped("mining_drill_mk4", <item:indrev:mining_drill_mk4>, [
	[enriched_nikolite_ingot, 	netherite_drill, 	enriched_nikolite_ingot],
	[tungsten_plate, 			circuit_mk4, 		tungsten_plate],
	[tungsten_plate, 			battery, 			tungsten_plate]]);


// modules etc
val bucket_coolant = <item:indrev:coolant_bucket>;

craftingTable.remove(<item:indrev:empty_enhancer>);
craftingTable.remove(<item:indrev:cooler_cell>);
craftingTable.remove(<item:indrev:energy_reader>);
craftingTable.remove(<item:indrev:heatsink>);

craftingTable.addShaped("empty_enhancer", <item:indrev:empty_enhancer>, [
	[iron_plate, 	iron_plate, empty],
	[iron_plate, 	iron_plate, empty],
	[empty, 		empty, 		empty]]);

craftingTable.addShaped("cooler_cell", <item:indrev:cooler_cell>, [
	[empty, 		iron_plate, 	empty],
	[iron_plate, 	bucket_coolant, iron_plate],
	[empty, 		iron_plate, 	empty]]);

craftingTable.addShaped("energy_reader", <item:indrev:energy_reader>, [
	[empty, 		circuit_mk1, 	empty],
	[iron_plate, 	copper_plate, 	iron_plate],
	[empty, 		empty, 			empty]]);

craftingTable.addShaped("heatsink", <item:indrev:heatsink>, [
	[iron_plate, 	fan, 			iron_plate],
	[copper_plate, 	bucket_coolant, copper_plate],
	[iron_plate, 	fan, 			iron_plate]]);

// modules

craftingTable.remove(<item:indrev:modular_core>);
craftingTable.addShaped("modular_core", <item:indrev:modular_core>, [
	[enriched_nikolite_ingot, 	circuit_mk4,	enriched_nikolite_ingot],
	[tungsten_plate, 			ostrum_block,	tungsten_plate],
	[tungsten_plate, 			circuit_mk4,	tungsten_plate]]);
