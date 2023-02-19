import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.data.IData;

function addPowahEnergizing(
  name as string, 
  itemsIn as IIngredient[], 
  itemOut as IItemStack, 
  energy as int
) as void {
  <recipetype:powah:energizing>.addJsonRecipe(name, {
    "type": "powah:energizing",
    "ingredients": itemsIn as IData,
    "energy": energy,
    "result": (itemOut as IData).merge({"count" : itemOut.amount})
  });
}

val nikolite_dust = <item:indrev:nikolite_dust>;
val nikolite_dust_rich = <item:indrev:enriched_nikolite_dust>;
val nikolite_ingot = <item:indrev:nikolite_ingot>;
val nikolite_ingot_rich =<item:indrev:enriched_nikolite_ingot>;
val diamond_dust = <item:indrev:diamond_dust>;

<recipetype:powah:energizing>.removeByName("powah:energizing/energized_steel");

addPowahEnergizing("energized_steel", [<tag:items:c:steel_ingots>, <item:minecraft:gold_ingot>], <item:powah:steel_energized> * 2, 10000);
addPowahEnergizing("energized_nikolite_dust", [diamond_dust, nikolite_dust], nikolite_dust_rich, 50000);
addPowahEnergizing("energized_nikolite_ingot", [nikolite_ingot, nikolite_dust_rich], nikolite_ingot_rich, 100000);
addPowahEnergizing("erergized_certus", [<item:ae2:certus_quartz_crystal>], <item:ae2:charged_certus_quartz_crystal>, 16000);
addPowahEnergizing("energizing_meteor_compass", [<item:minecraft:compass>], <item:ae2:meteorite_compass>, 16000);