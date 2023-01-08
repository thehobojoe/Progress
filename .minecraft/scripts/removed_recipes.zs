// pipes
craftingTable.remove(<item:indrev:fluid_pipe_mk1>);
craftingTable.remove(<item:indrev:fluid_pipe_mk2>);
craftingTable.remove(<item:indrev:fluid_pipe_mk3>);
craftingTable.remove(<item:indrev:fluid_pipe_mk4>);
craftingTable.remove(<item:indrev:item_pipe_mk1>);
craftingTable.remove(<item:indrev:item_pipe_mk2>);
craftingTable.remove(<item:indrev:item_pipe_mk3>);
craftingTable.remove(<item:indrev:item_pipe_mk4>);

// I don't really need to remove these, good way to figure out regex for zenscript though
// like how it can't handle an escape character to recognize a forward slash string match
craftingTable.removeByRegex("indrev:shaped.*tin_.+");
craftingTable.removeByRegex("indrev:shaped.*silver_.+");
craftingTable.removeByRegex("indrev:shaped.*bronze_.+");
craftingTable.removeByRegex("indrev:shaped.*lead_.+");

// generators
craftingTable.remove(<item:indrev:coal_generator_mk1>);
craftingTable.remove(<item:indrev:heat_generator_mk4>);
craftingTable.remove(<item:indrev:solar_generator_mk1>);
craftingTable.remove(<item:indrev:solar_generator_mk3>);
craftingTable.removeByRegex("powah:crafting.*magmator_.+");
craftingTable.removeByRegex("powah:crafting.*thermo_generator_.+");



