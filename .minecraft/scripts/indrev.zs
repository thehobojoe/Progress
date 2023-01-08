val nikolite_ingot = <item:indrev:nikolite_ingot>;
val nikolite_dust = <item:indrev:nikolite_dust>;
val enriched_nikolite_ingot = <item:indrev:enriched_nikolite_ingot>;
val enriched_nikolite_dust = <item:indrev:enriched_nikolite_dust>;
val circuit_mk1 = <item:indrev:circuit_mk1>;
val circuit_mk2 = <item:indrev:circuit_mk2>;
val circuit_mk3 = <item:indrev:circuit_mk3>;
val circuit_mk4 = <item:indrev:circuit_mk4>;
val empty = <item:minecraft:air>;

val brass_plate = <tag:items:c:brass_plates>;
val gold_plate = <tag:items:c:gold_plates>;
val tungsten_plate = <tag:items:c:tungsten_plates>;

craftingTable.addShaped("mk2_upgrade", <item:indrev:tier_upgrade_mk2>, [
	[empty, 		brass_plate, 	empty],
	[brass_plate, 	circuit_mk2, 	brass_plate],
	[nikolite_ingot, brass_plate, 	nikolite_ingot]]);

craftingTable.addShaped("mk3_upgrade", <item:indrev:tier_upgrade_mk3>, [
	[empty, 		gold_plate, 	empty],
	[gold_plate, 	circuit_mk3, 	gold_plate],
	[enriched_nikolite_dust, gold_plate, 	enriched_nikolite_dust]]);

craftingTable.addShaped("mk4_upgrade", <item:indrev:tier_upgrade_mk4>, [
	[empty, 		tungsten_plate, 	empty],
	[tungsten_plate, 	circuit_mk4, 	tungsten_plate],
	[enriched_nikolite_ingot, tungsten_plate, 	enriched_nikolite_ingot]]);

