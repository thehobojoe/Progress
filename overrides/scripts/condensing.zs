import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

function addIndrevCondensing(name as string, fluid as string, amount as int, itemOut as IIngredient) as void {
  <recipetype:indrev:condenser>.addJsonRecipe(name, {
    "type": "indrev:condenser",
    "fluidInput": {
      "amount": amount,
      "fluid": fluid
    },
    "output": itemOut as IData,
    "processTime": 500
  });
}

addIndrevCondensing("desh_chunk", "kubejs:molten_desh", 9000, <item:kubejs:desh_chunk>);
addIndrevCondensing("ostrum_chunk", "kubejs:molten_ostrum", 9000, <item:kubejs:ostrum_chunk>);
addIndrevCondensing("calorite_chunk", "kubejs:molten_calorite", 9000, <item:kubejs:calorite_chunk>);
addIndrevCondensing("zinc_chunk", "kubejs:molten_zinc", 9000, <item:kubejs:zinc_chunk>);
