#loader contenttweaker 

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;

var meatRaw = VanillaFactory.createItemFood("meat_ingot_raw", 2);
meatRaw.saturation = 0.2;
meatRaw.register();

var meat = VanillaFactory.createItemFood("meat_ingot", 8);
meat.saturation = 0.8;
meat.register();

var pulp = VanillaFactory.createItem("meat_pulp");
pulp.register();

var meatFoam = VanillaFactory.createItem("meat_foam");
meatFoam.register();

var foamIngot = VanillaFactory.createItem("meat_foam_ingot");
foamIngot.register();

//furnace.addRecipe(meatFoam, pulp);
//mods.thermalexpansion.Compactor.addPressRecipe(foamIngot, meatFoam, 2500);
//mods.immersiveengineering.MetalPress.addRecipe(foamIngot, meatFoam, <immersiveengineering:mold:0>, 2000);
//mods.immersiveengineering.BottlingMachine.addRecipe(meatRaw, foamIngot, <liquid:meat> * 400);
