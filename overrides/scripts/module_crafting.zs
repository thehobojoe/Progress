import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.data.IData;

function addModuleRecipe(
  name as string, 
  itemsIn as IIngredient[], 
  itemOut as IIngredient
) as void {
  <recipetype:indrev:modules>.addJsonRecipe(name, {
    "type": "indrev:modules",
    "ingredients": itemsIn as IData,
    "output": itemOut as IData,
    "processTime": 400,
  });
}

val zinc_plate = <tag:items:c:plates/zinc>;
val brass_plate = <tag:items:c:brass_plates>;
val steel_plate = <tag:items:c:steel_plates>;
val gold_plate = <tag:items:c:gold_plates>;
val ender_pearl = <item:minecraft:ender_pearl>;
val nether_quartz = <item:minecraft:quartz>;
val glass = <item:minecraft:glass>;
val circuit_mk1 = <item:indrev:circuit_mk1>;
val circuit_mk2 = <item:indrev:circuit_mk2>;
val circuit_mk3 = <item:indrev:circuit_mk3>;
val circuit_mk4 = <item:indrev:circuit_mk4>;
val nikolite_ingot = <item:indrev:nikolite_ingot>;
val nikolite_dust = <item:indrev:nikolite_dust>;
val enriched_nikolite_ingot = <item:indrev:enriched_nikolite_ingot>;
val enriched_nikolite_dust = <item:indrev:enriched_nikolite_dust>;

<recipetype:indrev:modules>.removeByName("indrev:modules/module_speed");
addModuleRecipe("speed_module", 
  [circuit_mk4, zinc_plate, zinc_plate, zinc_plate, zinc_plate, enriched_nikolite_ingot],
  <item:indrev:module_speed>);

<recipetype:indrev:modules>.removeByName("indrev:modules/module_night_vision");
addModuleRecipe("night_vision_module", 
  [circuit_mk4, glass, glass, enriched_nikolite_ingot, enriched_nikolite_ingot],
  <item:indrev:module_night_vision>);

<recipetype:indrev:modules>.removeByName("indrev:modules/module_range");
addModuleRecipe("range_module", 
  [circuit_mk4, steel_plate, steel_plate, brass_plate, brass_plate, enriched_nikolite_ingot],
  <item:indrev:module_range>);

<recipetype:indrev:modules>.removeByName("indrev:modules/module_efficiency");
addModuleRecipe("efficiency_module", 
  [circuit_mk4, gold_plate, gold_plate, steel_plate, steel_plate, enriched_nikolite_ingot],
  <item:indrev:module_efficiency>);

<recipetype:indrev:modules>.removeByName("indrev:modules/module_silk_touch");
addModuleRecipe("silk_touch_module", 
  [circuit_mk4, gold_plate, gold_plate, enriched_nikolite_ingot],
  <item:indrev:module_silk_touch>);

<recipetype:indrev:modules>.removeByName("indrev:modules/module_looting");
addModuleRecipe("looting_module", 
  [circuit_mk4, ender_pearl, ender_pearl, enriched_nikolite_ingot, enriched_nikolite_ingot],
  <item:indrev:module_looting>);

<recipetype:indrev:modules>.removeByName("indrev:modules/module_sharpness");
addModuleRecipe("sharpness_module", 
  [circuit_mk4, nether_quartz, nether_quartz, nether_quartz, nether_quartz, enriched_nikolite_ingot],
  <item:indrev:module_sharpness>);

