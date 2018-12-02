
var meatPulp = <contenttweaker:meat_pulp>;
var foamIngot = <contenttweaker:meat_foam_ingot>;
var meatFoam = <contenttweaker:meat_foam>;
var meatRaw = <contenttweaker:meat_ingot_raw>;
var meatIngot = <contenttweaker:meat_ingot>;


furnace.addRecipe(meatFoam, meatPulp);
mods.thermalexpansion.Compactor.addPressRecipe(foamIngot, meatFoam, 2500);
mods.immersiveengineering.MetalPress.addRecipe(foamIngot, meatFoam, <immersiveengineering:mold>, 2000);
mods.immersiveengineering.BottlingMachine.addRecipe(meatRaw, foamIngot, <liquid:meat> * 400);
furnace.addRecipe(meatIngot, meatRaw);