
val blaze_powder = <minecraft:blaze_powder>;
val dreamwood = <botania:dreamwood>;
val livingwood = <botania:livingwood>;
val gold = <minecraft:gold_ingot>;
val goldNugget = <ore:nuggetGold>;


//Spark
recipes.remove(<botania:spark>);
recipes.addShaped(<botania:spark>,
	[[null, <botania:petal:*>, null],
	[blaze_powder, goldNugget, blaze_powder],
	[null, <botania:petal:*>, null]]);


//Spreader
recipes.remove(<botania:spreader>);
recipes.addShaped(<botania:spreader>,
	[[livingwood, livingwood, livingwood],
	[gold, <botania:petal:*>, null],
	[livingwood, livingwood, livingwood]]);

//Elven spreader
recipes.remove(<botania:spreader:2>);
recipes.addShaped(<botania:spreader:2>,
	[[dreamwood, dreamwood, dreamwood],
	[<botania:manaresource:7>, <botania:petal:*>, null],
	[dreamwood, dreamwood, dreamwood]]);


//petal apothecary
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>,
	[[<minecraft:stone_slab:3>, <botania:petal:*>, <minecraft:stone_slab:3>],
	[null, <ore:cobblestone>, null,],
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);



//alter manasteel
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>); //Infusion
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 4000);

mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <minecraft:iron_block>, 36000);


//remove tiara
recipes.remove(<botania:flighttiara>);

//remove globetrotters sash
recipes.remove(<botania:supertravelbelt>);

//remove life imbuer
recipes.remove(<botania:spawnerclaw>);

val hempcrete = <immersiveengineering:stone_decoration:4>;

// living wood requires treated wood
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<immersiveengineering:treated_wood>, <botania:livingwood>, 60);

// livingrock from hempcrete
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(hempcrete, <botania:livingrock>, 60);
