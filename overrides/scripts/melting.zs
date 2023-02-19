import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

function addIndrevMetalMelting(name as string) as void {
	val prefix = "molten_" + name;
	val fluid = "kubejs:molten_" + name;
	addIndrevMelting(prefix + "_from_block", <tagmanager:items>.tag("c:" + name + "_blocks"), fluid, 81000);
	addIndrevMelting(prefix + "_from_purified_ore", <item:kubejs:${name}_purified_ore>, fluid, 45000);
	addIndrevMelting(prefix + "_from_ore", <tagmanager:items>.tag("c:" + name + "_ores"), fluid, 36000);
	addIndrevMelting(prefix + "_from_ingot", <tagmanager:items>.tag("c:" + name + "_ingots"), fluid, 9000);
	addIndrevMelting(prefix + "_from_dust", <item:kubejs:${name}_purified_ore>, fluid, 9000);
	addIndrevMelting(prefix + "_from_nugget", <tagmanager:items>.tag("c:" + name + "_nuggets"), fluid, 1000);
}

function addIndrevMelting(name as string, item as IIngredient, fluid as string, amount as int) as void {
	<recipetype:indrev:smelter>.addJsonRecipe(name, {
		"type": "indrev:smelter",
		"ingredients": item as IData,
		"fluidOutput": {
			"fluid": fluid,
			"amount": amount
		},
		"processTime": 600
	});
}

addIndrevMetalMelting("desh");
addIndrevMetalMelting("ostrum");
addIndrevMetalMelting("calorite");
addIndrevMetalMelting("zinc");