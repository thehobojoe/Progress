import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.util.random.Percentaged;


function addCreateCrushing(name as string, itemIn as IIngredient, itemsOut as Percentaged<IItemStack>[]) as void {
  // deal with percentaged item stacks
  var results = new ListData();
  for output in itemsOut {
    results.add({
      item: output.data.registryName,
      chance: output.percentage
    });
  }

  <recipetype:create:crushing>.addJsonRecipe(name, {
    "type": "create:crushing",
    "ingredients": [
      itemIn as IData,
    ],
    "processingTime": 400,
    "results": results,
  }
  );
}

var coal = <item:minecraft:coal>;
var coal_dust = <item:indrev:coal_dust>;
var diamond = <item:minecraft:diamond>;
var diamond_dust = <item:indrev:diamond_dust>;

addCreateCrushing("crush_coal_dust", coal, [coal_dust, coal_dust % 25, diamond_dust % 0.5]);
addCreateCrushing("crush_diamond_dust", diamond, [diamond_dust, diamond_dust % 5]);

