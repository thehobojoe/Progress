import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

//The name of the recipe must be unique, and it must abide by typical a-z0-9.-_/ restrictions.
function addCreatePressing(name as string, itemIn as IIngredient, itemOut as IIngredient) as void {
<recipetype:create:pressing>.addJsonRecipe(name, {
  "type": "create:pressing",
  "ingredients": [
    itemIn as IData,
  ],
  "results": [
    itemOut as IData,
  ]
}
);
}

//Just call this every time you require a new recipe, thus shortening the size of your scripts tremendously, as you don't need to paste massive jsons everywhere.
addCreatePressing("press_tungsten_plate", <tag:items:c:tungsten_ingots>, <item:indrev:tungsten_plate>);
addCreatePressing("press_steel_plate", <tag:items:c:steel_ingots>, <item:indrev:steel_plate>);
