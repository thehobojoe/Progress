
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
	[<botania:manaResource:7>, <botania:petal:*>, null],
	[dreamwood, dreamwood, dreamwood]]);


//petal apothecary
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>,
	[[<minecraft:stone_slab:3>, <botania:petal:*>, <minecraft:stone_slab:3>],
	[null, <ore:cobblestone>, null,],
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);



//replace livingwood recipe
//mods.botania.PureDaisy.removeRecipe(<Botania:livingwood>);
//mods.botania.PureDaisy.addRecipe(<ore:plankTreatedWood>, <Botania:livingwood>);


//alter manasteel
//mods.botania.ManaInfusion.removeRecipe(<Botania:manaResource>); //Infusion
//mods.botania.ManaInfusion.addInfusion(<Botania:manaResource>, <ore:ingotSteel>, 4000);