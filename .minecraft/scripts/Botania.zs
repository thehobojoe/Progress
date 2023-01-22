val empty = <item:minecraft:air>;

//remove tiara
craftingTable.remove(<item:botania:flight_tiara>);

//remove globetrotters sash
craftingTable.remove(<item:botania:super_travel_belt>);

//remove life imbuer
craftingTable.remove(<item:botania:spawner_claw>);

// terrasteel armor
val terra_ingot = <item:botania:terrasteel_ingot>;
val ice_shard = <item:ad_astra:ice_shard>;

val rune_spring = <item:botania:rune_spring>;
val rune_summer = <item:botania:rune_summer>;
val rune_autumn = <item:botania:rune_autumn>;
val rune_winter = <item:botania:rune_winter>;

val terra_helmet = <item:botania:terrasteel_helmet>;
val terra_chest = <item:botania:terrasteel_chestplate>;
val terra_legs = <item:botania:terrasteel_leggings>;
val terra_boots = <item:botania:terrasteel_boots>;

val mana_helmet = <item:botania:manasteel_helmet>;
val mana_chest = <item:botania:manasteel_chestplate>;
val mana_legs = <item:botania:manasteel_leggings>;
val mana_boots = <item:botania:manasteel_boots>;

craftingTable.remove(terra_helmet);
craftingTable.addShaped("terra_helmet", terra_helmet, [
	[ice_shard, 	rune_spring, ice_shard],
	[terra_ingot, 	mana_helmet, terra_ingot],
	[empty, 		terra_ingot, empty]]);

craftingTable.remove(terra_chest);
craftingTable.addShaped("terra_chest", terra_chest, [
	[ice_shard, 	rune_summer, 	ice_shard],
	[terra_ingot, 	mana_chest, 	terra_ingot],
	[empty, 		terra_ingot, 	empty]]);

craftingTable.remove(terra_legs);
craftingTable.addShaped("terra_legs", terra_legs, [
	[ice_shard, 	rune_autumn, 	ice_shard],
	[terra_ingot, 	mana_legs, 		terra_ingot],
	[empty, 		terra_ingot, 	empty]]);

craftingTable.remove(terra_boots);
craftingTable.addShaped("terra_boots", terra_boots, [
	[ice_shard, 	rune_winter, 	ice_shard],
	[terra_ingot, 	mana_boots, 	terra_ingot],
	[empty, 		terra_ingot, 	empty]]);