
val blaze_powder = <minecraft:blaze_powder>;
val gold = <minecraft:gold_ingot>;
val goldNugget = <ore:nuggetGold>;

// Botania materials
val dreamwood = <botania:dreamwood>;
val livingwood = <botania:livingwood>;
val livingrock = <botania:livingrock>;
val manasteel = <ore:ingotManasteel>;
val terrasteel = <ore:ingotTerrasteel>;


// AS materials
val stardust = <ore:dustAstralStarmetal>;
val starmetal = <ore:ingotAstralStarmetal>;
val aquamarine = <ore:gemAquamarine>;
val resonatingGem = <astralsorcery:itemcraftingcomponent:4>;
val crystalRock = <astralsorcery:itemrockcrystalsimple>;
val crystalCelestial = <astralsorcery:itemcelestialcrystal>;
val glassLens = <astralsorcery:itemcraftingcomponent:3>;
val bucketStarlight = <liquid:astralsorcery.liquidstarlight>;

// Marble variants
val marbleChiseled = <astralsorcery:blockmarble:4>;
val marblePillar = <astralsorcery:blockmarble:2>;
val marbleRuned = <astralsorcery:blockmarble:6>;
val marbleSooty = <astralsorcery:blockblackmarble>;



mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");

// Starlight Crafting Altar recipe
mods.astralsorcery.Altar.addDiscoveryAltarRecipe(
	"astralsorcery:shaped/internal/altar/upgrade_tier_2", 
	<astralsorcery:blockaltar:1>, 700, 100, [
            marblePillar, crystalRock, marblePillar,
            livingrock, bucketStarlight, livingrock,
            marblePillar, null, marblePillar]);


// Celestial altar recipe
mods.astralsorcery.Altar.addAttunementAltarRecipe(
	"astralsorcery:shaped/internal/altar/upgrade_tier_3", 
	<astralsorcery:blockaltar:2>, 700, 300, [
		manasteel, null, manasteel,
		livingrock, crystalRock, livingrock,
		marblePillar, starmetal, marblePillar,
		stardust, stardust, marbleChiseled, marbleChiseled
		]);


// Iridescent altar recipe
mods.astralsorcery.Altar.addConstellationAltarRecipe(
	"astralsorcery:shaped/internal/altar/upgrade_tier_4",
	<astralsorcery:blockaltar:3>, 3200, 500, [
		marbleRuned, glassLens, marbleRuned,
		terrasteel, crystalCelestial, terrasteel,
		marbleRuned, terrasteel, marbleRuned,
		starmetal, starmetal, starmetal, starmetal,
		marbleSooty, marbleSooty,
		resonatingGem, resonatingGem,
		resonatingGem, resonatingGem,
		marbleSooty, marbleSooty
		]);