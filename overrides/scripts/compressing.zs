import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.data.IData;

function addIndrevCompressing(name as string, itemIn as IIngredient, itemOut as IIngredient) as void {
  <recipetype:indrev:compress>.addJsonRecipe(name, {
    "type": "indrev:compress",
    "ingredients": [
      itemIn as IData,
    ],
    "output": [
      itemOut as IData,
    ],
    "processTime": 400
  });
}

addIndrevCompressing("compress_zinc_plate", <tag:items:c:zinc_ingots>, <item:createaddition:zinc_sheet>);
addIndrevCompressing("compress_brass_plate", <tag:items:c:brass_ingots>, <item:create:brass_sheet>);
addIndrevCompressing("compress_desh_plate", <tag:items:c:desh_ingots>, <item:ad_astra:desh_plate>);
addIndrevCompressing("compress_ostrum_plate", <tag:items:c:ostrum_ingots>, <item:ad_astra:ostrum_plate>);
addIndrevCompressing("compress_calorite_plate", <tag:items:c:calorite_ingots>, <item:ad_astra:calorite_plate>);