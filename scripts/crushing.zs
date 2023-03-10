import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.util.random.Percentaged;


function addCreateCrushing(name as string, itemIn as IIngredient, itemsOut as Percentaged<IItemStack>[]) as void {
  // deal with percentaged item stacks
  var results = new ListData();
  for output in itemsOut {
    results.add({
      item: output.data.registryName,
      count: output.data.amount,
      chance: output.percentage
    });
  }

  <recipetype:create:crushing>.addJsonRecipe(name, {
    "type": "create:crushing",
    "ingredients": [
      itemIn as IData,
    ],
    "processingTime": 400,
    "results": results,
  }
  );
}

var coal = <item:minecraft:coal>;
var coal_dust = <item:indrev:coal_dust>;
var diamond = <item:minecraft:diamond>;
var diamond_dust = <item:indrev:diamond_dust>;
var xp_nugget = <item:create:experience_nugget>;


addCreateCrushing("crush_coal_dust", coal, [coal_dust, coal_dust % 15, diamond_dust % 0.5]);
addCreateCrushing("crush_diamond_dust", diamond, [diamond_dust, diamond_dust % 5]);
addCreateCrushing("crush_nikolite", <tag:items:c:nikolite_ores>, [<item:indrev:nikolite_dust> * 6, <item:indrev:nikolite_dust> % 25]);
addCreateCrushing("crush_iron",<item:minecraft:iron_ingot>, [<item:indrev:iron_dust>]);

addCreateCrushing("crush_topaz_blocks", <item:spectrum:topaz_block>, [<item:spectrum:topaz_shard>, <item:spectrum:topaz_shard> % 25]);
addCreateCrushing("crush_citrine_blocks", <item:spectrum:citrine_block>, [<item:spectrum:citrine_shard>, <item:spectrum:citrine_shard> % 25]);
addCreateCrushing("crush_emerald_blocks", <item:geodes:emerald_geode>, [<item:minecraft:emerald> % 50]);
addCreateCrushing("crush_diamond_blocks", <item:geodes:diamond_geode>, [<item:minecraft:diamond> % 50]);
addCreateCrushing("crush_azurite_ore", <item:spectrum:azurite_ore>, [<item:spectrum:raw_azurite>, <item:spectrum:raw_azurite> % 25]);
addCreateCrushing("crush_deepslate_azurite_ore", <item:spectrum:azurite_ore>, [<item:spectrum:raw_azurite>, <item:spectrum:raw_azurite> % 25]);

val moon_sand = <item:ad_astra:moon_sand>;
val moon_stone = <item:ad_astra:moon_stone>;
val moon_cobble = <item:ad_astra:moon_cobblestone>;
val mars_sand = <item:ad_astra:mars_sand>;
val mars_stone = <item:ad_astra:mars_stone>;
val mars_cobble = <item:ad_astra:mars_cobblestone>;
val venus_sand = <item:ad_astra:venus_sand>;
val venus_stone =  <item:ad_astra:venus_stone>;
val venus_cobble = <item:ad_astra:venus_cobblestone>;

addCreateCrushing("crush_moonstone",    moon_stone,   [moon_sand % 25, <item:ad_astra:raw_desh> % 1]);
addCreateCrushing("crush_mooncobble",   moon_cobble,  [moon_sand % 25, <item:ad_astra:raw_desh> % 1]);
addCreateCrushing("crush_marsstone",    mars_stone,   [mars_sand % 25, <item:ad_astra:raw_ostrum> % 1]);
addCreateCrushing("crush_marscobble",   mars_cobble,  [mars_sand % 25, <item:ad_astra:raw_ostrum> % 1]);
addCreateCrushing("crush_venusstone",   venus_stone,  [venus_sand % 25, <item:ad_astra:raw_calorite> % 1]);
addCreateCrushing("crush_venuscobble",  venus_cobble, [venus_sand % 25, <item:ad_astra:raw_calorite> % 1]);

val certus = <item:ae2:certus_quartz_crystal>;
val certus_dust = <item:ae2:certus_quartz_dust>;
val certus_charged = <item:ae2:charged_certus_quartz_crystal>;

addCreateCrushing("crush_certus", certus, [certus_dust, certus_dust % 10]);
addCreateCrushing("crush_charged_certus", certus_charged, [certus_dust, certus_dust % 10]);

val crushed_desh = <item:kubejs:crushed_desh>;
val crushed_ostrum = <item:kubejs:crushed_ostrum>;
val crushed_calorite = <item:kubejs:crushed_calorite>;

addCreateCrushing("crush_desh_ore",     <tag:items:c:desh_ores>,    [crushed_desh, crushed_desh % 75, xp_nugget % 75]);
addCreateCrushing("crush_ostrum_ore",   <tag:items:c:ostrum_ores>,  [crushed_ostrum, crushed_ostrum % 75, xp_nugget % 75]);
addCreateCrushing("crush_calorite_ore", <tag:items:c:calorite_ores>,[crushed_calorite, crushed_calorite % 75, xp_nugget % 75]);

addCreateCrushing("crush_raw_desh", <item:ad_astra:raw_desh>, [crushed_desh, xp_nugget % 75]);
addCreateCrushing("crush_raw_ostrum", <item:ad_astra:raw_ostrum>, [crushed_ostrum, xp_nugget % 75]);
addCreateCrushing("crush_raw_calorite", <item:ad_astra:raw_calorite>, [crushed_calorite, xp_nugget % 75]);

val steel_dust = <item:indrev:steel_dust>;

addCreateCrushing("crush_rocket_t1", <item:ad_astra:tier_1_rocket>, [steel_dust * 50]);
addCreateCrushing("crush_rocket_t2", <item:ad_astra:tier_2_rocket>, [steel_dust * 15, <item:kubejs:desh_dust> * 40]);
addCreateCrushing("crush_rocket_t3", <item:ad_astra:tier_3_rocket>, [steel_dust * 15, <item:kubejs:ostrum_dust> * 40]);
addCreateCrushing("crush_rocket_t4", <item:ad_astra:tier_4_rocket>, [steel_dust * 15, <item:kubejs:calorite_dust> * 40]);

addCreateCrushing("crush_rhyolite", <item:twigs:rhyolite>, [<item:minecraft:quartz> % 20, certus % 20]);
