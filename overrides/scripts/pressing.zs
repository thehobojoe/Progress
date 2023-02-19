import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.data.IData;

function addCreatePressing(name as string, itemIn as IIngredient, itemOut as IIngredient) as void {
  <recipetype:create:pressing>.addJsonRecipe(name, {
    "type": "create:pressing",
    "ingredients": [
      itemIn as IData,
    ],
    "results": [
      itemOut as IData,
    ]
  });
}

addCreatePressing("press_tungsten_plate", <tag:items:c:tungsten_ingots>, <item:indrev:tungsten_plate>);
addCreatePressing("press_steel_plate", <tag:items:c:steel_ingots>, <item:indrev:steel_plate>);