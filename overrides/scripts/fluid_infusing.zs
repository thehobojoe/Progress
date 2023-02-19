import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.data.IData;

function addIndrevFluidInfusing(name as string, itemIn as IIngredient, itemOut as IIngredient) as void {
	<recipetype:indrev:fluid_infuse>.addJsonRecipe(name, {
		"type": "indrev:fluid_infuse",
		"ingredients": [
			itemIn as IData,
		],
		"fluidInput": {
			"fluid": "indrev:sulfuric_acid_still",
			"amount": 81000
		},
		"fluidOutput": {
			"fluid": "indrev:toxic_mud_still",
			"amount": 1000
		},
		"output": itemOut as IData,
		"processTime": 600
	});
}

addIndrevFluidInfusing("purified_desh", <tag:items:c:desh_ores>, <item:kubejs:desh_purified_ore>);
addIndrevFluidInfusing("purified_ostrum", <tag:items:c:ostrum_ores>, <item:kubejs:ostrum_purified_ore>);
addIndrevFluidInfusing("purified_calorite", <tag:items:c:calorite_ores>, <item:kubejs:calorite_purified_ore>);
addIndrevFluidInfusing("purified_zinc", <tag:items:c:zinc_ores>, <item:kubejs:zinc_purified_ore>);