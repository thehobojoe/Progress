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
  val data = itemOut as IIngredientWithAmount;
  println(data as string);
  <recipetype:powah:energizing>.addJsonRecipe(name, {
    "type": "powah:energizing",
    "ingredients": itemsIn as IData,
    "energy": energy,
    "result": (itemOut as IData).merge({"count" : itemOut.amount})
  });
}

addPowahEnergizing("energized_steel", [<tag:items:c:steel_ingots>, <item:minecraft:gold_ingot>], <item:powah:steel_energized> * 2, 10000);
addPowahEnergizing("energized_nikolite_dust", [<item:indrev:diamond_dust>, <item:indrev:nikolite_dust>], <item:indrev:enriched_nikolite_dust>, 50000);
