// pipes
craftingTable.remove(<item:indrev:fluid_pipe_mk1>);
craftingTable.remove(<item:indrev:fluid_pipe_mk2>);
craftingTable.remove(<item:indrev:fluid_pipe_mk3>);
craftingTable.remove(<item:indrev:fluid_pipe_mk4>);
craftingTable.remove(<item:indrev:item_pipe_mk1>);
craftingTable.remove(<item:indrev:item_pipe_mk2>);
craftingTable.remove(<item:indrev:item_pipe_mk3>);
craftingTable.remove(<item:indrev:item_pipe_mk4>);

craftingTable.remove(<item:indrev:machine_block>);

// circuits
craftingTable.remove(<item:indrev:circuit_mk1>);
craftingTable.remove(<item:indrev:circuit_mk2>);
craftingTable.remove(<item:indrev:circuit_mk3>);
craftingTable.remove(<item:indrev:circuit_mk4>);

// I don't really need to remove these, good way to figure out regex for zenscript though
// like how it can't handle an escape character to recognize a forward slash string match
craftingTable.removeByRegex("indrev:shaped.*tin_.+");
craftingTable.removeByRegex("indrev:shaped.*silver_.+");
craftingTable.removeByRegex("indrev:shaped.*bronze_.+");
craftingTable.removeByRegex("indrev:shaped.*lead_.+");
craftingTable.removeByRegex("indrev:shaped.*servo_.+");

// generators
craftingTable.remove(<item:indrev:heat_generator_mk4>);
craftingTable.remove(<item:indrev:solar_generator_mk1>);
craftingTable.remove(<item:indrev:solar_generator_mk3>);
craftingTable.removeByRegex("powah:crafting.*magmator_.+");
craftingTable.removeByRegex("powah:crafting.*thermo_generator_.+");
craftingTable.removeByRegex("powah:crafting.*solar_panel_.+");
craftingTable.removeByRegex("powah:crafting.*chopper_.+");
craftingTable.removeByRegex("powah:crafting.*farmer_.+");
craftingTable.removeByRegex("powah:crafting.*slaughter_.+");
craftingTable.removeByRegex("powah:crafting.*ender_cell_.+");
craftingTable.removeByRegex("powah:crafting.*energy_cell_.+");
craftingTable.removeByRegex("powah:crafting.*energy_cable_.+");
craftingTable.removeByRegex("powah:crafting.*energy_gate_.+");

craftingTable.remove(<item:ae2:controller>);
//craftingTable.removeByRegex("ae2:network.*energy_vibration_chamber");


craftingTable.remove(<item:ad_astra:compressor>);
craftingTable.remove(<item:ad_astra:coal_generator>);
craftingTable.removeByRegex("ad_astra:hammering.*_plate");
<recipetype:ad_astra:compressing>.removeAll();
<recipetype:minecraft:blasting>.removeByName("ad_astra:recipes/steel_ingot_from_blasting_iron_ingot");

// biomass etc
<recipetype:create:compacting>.removeByName("createaddition:compacting/seed_oil");
<recipetype:create:compacting>.removeByName("createaddition:compacting/biomass_pellet");
<recipetype:create:mixing>.removeByName("createaddition:mixing/bioethanol");
<recipetype:create:mixing>.removeByName("createaddition:mixing/biomass_from_plants");
<recipetype:create:mixing>.removeByName("createaddition:mixing/biomass_from_flowers");
<recipetype:create:mixing>.removeByName("createaddition:mixing/biomass_from_leaves");
<recipetype:create:mixing>.removeByName("createaddition:mixing/biomass_from_plant_foods");
<recipetype:create:mixing>.removeByName("createaddition:mixing/biomass_from_sticks");
<recipetype:create:mixing>.removeByName("createaddition:mixing/biomass_from_saplings");






