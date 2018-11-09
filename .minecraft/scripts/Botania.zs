
val blaze_powder = <minecraft:blaze_powder>;
val gold = <minecraft:gold_ingot>;
val goldNugget = <ore:nuggetGold>;

// Botania materials
val dreamwood = <botania:dreamwood>;
val livingwood = <botania:livingwood>;
val livingrock = <botania:livingrock>;
val manasteel = <ore:ingotManasteel>;
val terrasteel = <ore:ingotTerrasteel>;


val glassLens = <astralsorcery:itemcraftingcomponent:3>;
val crystalRock = <astralsorcery:itemrockcrystalsimple>;
val crystalCelestial = <astralsorcery:itemcelestialcrystal>;

val hempcrete = <immersiveengineering:stone_decoration:4>;


// living wood requires treated wood
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<immersiveengineering:treated_wood>, <botania:livingwood>, 60);

// livingrock from hempcrete
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(hempcrete, <botania:livingrock>, 60);


//alter manasteel
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>); //Infusion
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 4000);

mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <ore:blockSteel>, 36000);




//Mana Pool
recipes.remove(<botania:pool>);
recipes.addShaped(<botania:pool>,
	[[null, null, null],
	[livingrock, crystalRock, livingrock],
	[livingrock, livingrock, livingrock]]);


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

recipes.remove(<botania:lens>);
recipes.addShaped(<botania:lens>,
	[[null, manasteel, null],
	[manasteel, glassLens, manasteel],
	[null, manasteel, null]]);


//petal apothecary
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>,
	[[<minecraft:stone_slab:3>, <botania:petal:*>, <minecraft:stone_slab:3>],
	[null, <ore:cobblestone>, null,],
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);


recipes.remove(<botania:terraplate>);
recipes.addShaped(<botania:terraplate>, 
	[[<botania:storage>, <ore:ingotAstralStarmetal>, <botania:storage>], 
	[<ore:runeWaterB>, crystalCelestial, <ore:runeFireB>], 
	[<ore:runeEarthB>, <ore:runeManaB>, <ore:runeAirB>]]);


val terraPick 	= <botania:terrapick>;
val fluxRod 	= <redstonearsenal:material:193>;
val manaTablet 	= <botania:manatablet>;

recipes.remove(terraPick);
recipes.addShaped(terraPick,
	[[terrasteel, manaTablet, terrasteel],
	[terrasteel, fluxRod, terrasteel],
	[null, fluxRod, null]]);


//remove tiara
recipes.remove(<botania:flighttiara>);

//remove life imbuer
recipes.remove(<botania:spawnerclaw>);




