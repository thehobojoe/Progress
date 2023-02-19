import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.data.IData;

val zinc_ore = <tag:items:c:zinc_ores>;
val zinc_ingot = <item:create:zinc_ingot>;
val zinc_chunk = <item:kubejs:zinc_chunk>;
val zinc_dust = <item:kubejs:zinc_dust>;
val desh_ore = <tag:items:c:desh_ores>;
val desh_ingot = <item:ad_astra:desh_ingot>;
val desh_chunk = <item:kubejs:desh_chunk>;
val desh_dust = <item:kubejs:desh_dust>;
val desh_crushed = <item:kubejs:crushed_desh>;
val ostrum_ore = <tag:items:c:ostrum_ores>;
val ostrum_ingot = <item:ad_astra:ostrum_ingot>;
val ostrum_chunk = <item:kubejs:ostrum_chunk>;
val ostrum_dust = <item:kubejs:ostrum_dust>;
val ostrum_crushed = <item:kubejs:crushed_ostrum>;
val calorite_ore = <tag:items:c:calorite_ores>;
val calorite_ingot = <item:ad_astra:calorite_ingot>;
val calorite_chunk = <item:kubejs:calorite_chunk>;
val calorite_dust = <item:kubejs:calorite_dust>;
val calorite_crushed = <item:kubejs:crushed_calorite>;


function addPulverizing(name as string, itemIn as IIngredient, itemOut as IItemStack) as void {
	<recipetype:indrev:pulverize>.addJsonRecipe(name, {
		"type": "indrev:pulverize",
		"ingredients": itemIn as IData,
		"output": (itemOut as IData).merge({"count" : itemOut.amount}),
		"processTime": 150
	});
}

addPulverizing("zinc_dust_from_chunk", zinc_chunk, zinc_dust);
addPulverizing("desh_dust_from_chunk", desh_chunk, desh_dust);
addPulverizing("ostrum_dust_from_chunk", ostrum_chunk, ostrum_dust);
addPulverizing("calorite_dust_from_chunk", calorite_chunk, calorite_dust);

addPulverizing("zinc_dust_from_ore", zinc_ore, zinc_dust * 3);
addPulverizing("desh_dust_from_ore", desh_ore, desh_dust * 3);
addPulverizing("ostrum_dust_from_ore", ostrum_ore, ostrum_dust * 3);
addPulverizing("calorite_dust_from_ore", calorite_ore, calorite_dust * 3);

furnace.addRecipe("smelt_zinc_ingot_from_dust", zinc_ingot, zinc_dust, 0.2, 200);
furnace.addRecipe("smelt_desh_ingot_from_dust", desh_ingot, desh_dust, 0.2, 200);
furnace.addRecipe("smelt_ostrum_ingot_from_dust", ostrum_ingot, ostrum_dust, 0.2, 200);
furnace.addRecipe("smelt_calorite_ingot_from_dust", calorite_ingot, calorite_dust, 0.2, 200);

furnace.addRecipe("smelt_desh_ingot_from_crushed", desh_ingot, desh_crushed, 0.2, 200);
furnace.addRecipe("smelt_ostrum_ingot_from_crushed", ostrum_ingot, ostrum_crushed, 0.2, 200);
furnace.addRecipe("smelt_calorite_ingot_from_crushed", calorite_ingot, calorite_crushed, 0.2, 200);

blastFurnace.addRecipe("blast_zinc_ingot_from_dust", zinc_ingot, zinc_dust, 0.2, 100);
blastFurnace.addRecipe("blast_desh_ingot_from_dust", desh_ingot, desh_dust, 0.2, 100);
blastFurnace.addRecipe("blast_ostrum_ingot_from_dust", ostrum_ingot, ostrum_dust, 0.2, 100);
blastFurnace.addRecipe("blast_calorite_ingot_from_dust", calorite_ingot, calorite_dust, 0.2, 100);

blastFurnace.addRecipe("blast_desh_ingot_from_crushed", desh_ingot, desh_crushed, 0.2, 200);
blastFurnace.addRecipe("blast_ostrum_ingot_from_crushed", ostrum_ingot, ostrum_crushed, 0.2, 200);
blastFurnace.addRecipe("blast_calorite_ingot_from_crushed", calorite_ingot, calorite_crushed, 0.2, 200);

