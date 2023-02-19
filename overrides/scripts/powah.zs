val furnace = <item:minecraft:furnace>;
val iron_ingot = <item:minecraft:iron_ingot>;
val energized_steel = <item:powah:steel_energized>;

val battery = <item:indrev:battery>;
val dielectric_paste = <item:powah:dielectric_paste>;
val dielectric_casing = <item:powah:dielectric_casing>;

val desh_plate = <item:ad_astra:desh_plate>;
val ostrum_plate = <item:ad_astra:ostrum_plate>;

val capacitor_tiny = <item:powah:capacitor_basic_tiny>;
val capacitor_basic = <item:powah:capacitor_basic>;
val capacitor_large = <item:powah:capacitor_basic_large>;
val capacitor_hardened = <item:powah:capacitor_hardened>;
val capacitor_blazing = <item:powah:capacitor_blazing>;
val capacitor_niotic = <item:powah:capacitor_niotic>;
val capacitor_spirited = <item:powah:capacitor_spirited>;
val capacitor_nitro = <item:powah:capacitor_nitro>;

val furnator_starter = <item:powah:furnator_starter>;
val furnator_basic = <item:powah:furnator_basic>;
val furnator_hardened = <item:powah:furnator_hardened>;
val furnator_blazing = <item:powah:furnator_blazing>;
val furnator_niotic = <item:powah:furnator_niotic>;
val furnator_spirited = <item:powah:furnator_spirited>;
val furnator_nitro = <item:powah:furnator_nitro>;

val reactor_starter = <item:powah:reactor_starter>;
val reactor_basic = <item:powah:reactor_basic>;
val reactor_hardened = <item:powah:reactor_hardened>;
val reactor_blazing = <item:powah:reactor_blazing>;
val reactor_niotic = <item:powah:reactor_niotic>;
val reactor_spirited = <item:powah:reactor_spirited>;
val reactor_nitro = <item:powah:reactor_nitro>;

val crystal_blazing = <item:powah:crystal_blazing>;
val crystal_niotic = <item:powah:crystal_niotic>;
val crystal_spirited = <item:powah:crystal_spirited>;
val crystal_nitro = <item:powah:crystal_nitro>;


craftingTable.remove(furnator_starter);
craftingTable.addShaped("furnator_starter", furnator_starter, [
	[dielectric_paste, 		battery, 			dielectric_paste],
	[capacitor_tiny, 		dielectric_casing, 	capacitor_tiny],
	[dielectric_paste, 		furnace, 			dielectric_paste]]);

craftingTable.remove(furnator_basic);
craftingTable.addShaped("furnator_basic", furnator_basic, [
	[iron_ingot, 		battery, 			iron_ingot],
	[capacitor_basic, 	dielectric_casing, 	capacitor_basic],
	[iron_ingot, 		furnator_starter, 	iron_ingot]]);

craftingTable.remove(furnator_hardened);
craftingTable.addShaped("furnator_hardened", furnator_hardened, [
	[energized_steel, 		battery, 			energized_steel],
	[capacitor_hardened, 	dielectric_casing, 	capacitor_hardened],
	[energized_steel, 		furnator_starter, 	energized_steel]]);

craftingTable.remove(furnator_blazing);
craftingTable.addShaped("furnator_blazing", furnator_blazing, [
	[crystal_blazing, 		battery, 			crystal_blazing],
	[capacitor_blazing, 	dielectric_casing, 	capacitor_blazing],
	[crystal_blazing, 		furnator_hardened, 	crystal_blazing]]);

craftingTable.remove(furnator_niotic);
craftingTable.addShaped("furnator_niotic", furnator_niotic, [
	[crystal_niotic, 		battery, 			crystal_niotic],
	[capacitor_niotic, 		dielectric_casing, 	capacitor_niotic],
	[crystal_niotic, 		furnator_blazing, 	crystal_niotic]]);

craftingTable.remove(furnator_spirited);
craftingTable.addShaped("furnator_spirited", furnator_spirited, [
	[crystal_spirited, 		battery, 			crystal_spirited],
	[capacitor_spirited, 	dielectric_casing, 	capacitor_spirited],
	[crystal_spirited, 		furnator_niotic, 	crystal_spirited]]);

craftingTable.remove(furnator_nitro);
craftingTable.addShaped("furnator_nitro", furnator_nitro, [
	[crystal_nitro, 		battery, 			crystal_nitro],
	[capacitor_nitro, 		dielectric_casing, 	capacitor_nitro],
	[crystal_nitro, 		furnator_spirited, 	crystal_nitro]]);

craftingTable.remove(reactor_starter);
craftingTable.addShaped("reactor_starter", reactor_starter * 4, [
	[desh_plate, 		battery, 			desh_plate],
	[capacitor_basic, 	dielectric_casing, 	capacitor_basic],
	[desh_plate, 		capacitor_basic, 	desh_plate]]);

craftingTable.remove(reactor_hardened);
craftingTable.addShaped("reactor_hardened", reactor_hardened * 4, [
	[reactor_basic, 		battery, 			reactor_basic],
	[capacitor_hardened, 	ostrum_plate, 		capacitor_hardened],
	[reactor_basic, 		capacitor_hardened, reactor_basic]]);