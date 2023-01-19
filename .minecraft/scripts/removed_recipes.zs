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
craftingTable.remove(<item:indrev:coal_generator_mk1>);
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
craftingTable.removeByRegex("ae2:network.*energy_vibration_chamber");


craftingTable.remove(<item:ad_astra:compressor>);
craftingTable.remove(<item:ad_astra:coal_generator>);
craftingTable.removeByRegex("ad_astra:hammering.*_plate");






