import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.util.Many;

<recipetype:indrev:recycle>.removeAll();

function addBiomassRecipe(name as string, ingredients as IIngredientWithAmount[], itemOut as IIngredientWithAmount) as void {
  var inputA = new ListData();
  for input in ingredients {
    inputA.add((input.ingredient as IData).merge({"count": input.amount}));
  }
  
  <recipetype:indrev:recycle>.addJsonRecipe("recycle_" + name, {
    "type": "indrev:recycle",
    "ingredients": inputA,
    "output": (itemOut.ingredient as IData).merge({"count" : itemOut.amount}),
    "processTime": 200,
  });

  var inputB = new ListData();
  for input in ingredients {
    for i in 0 .. input.amount {
      inputB.add(input.ingredient as IData);
    }
  }

  inputB.add({
      "fluid": "minecraft:water",
      "amount": 20300
    });
  <recipetype:create:compacting>.addJsonRecipe("compact_" + name, {
    "type": "create:compacting",
    "ingredients": inputB,
    "results": [
      (itemOut.ingredient as IData).merge({"count" : itemOut.amount}),
    ]
  });
}

// TODO: probably balance these some more and add some more generic types like "fruit", "veggies", etc
addBiomassRecipe("biomass_from_saplings", [<tag:items:c:saplings>], <item:indrev:biomass>);
addBiomassRecipe("biomass_from_seeds", [<tag:items:c:seeds> * 2], <item:indrev:biomass>);
addBiomassRecipe("biomass_from_wheat", [<item:minecraft:wheat>], <item:indrev:biomass> * 2);
addBiomassRecipe("biomass_from_mushrooms", [<tag:items:c:mushrooms> * 2], <item:indrev:biomass>);
addBiomassRecipe("biomass_from_potato", [<item:minecraft:potato>], <item:indrev:biomass>);
addBiomassRecipe("biomass_from_wart", [<item:minecraft:nether_wart>], <item:indrev:biomass> * 3);
addBiomassRecipe("biomass_from_melon_slice", [<item:minecraft:melon_slice>], <item:indrev:biomass> * 2);
addBiomassRecipe("biomass_from_melon", [<item:minecraft:melon>], <item:indrev:biomass> * 18);
addBiomassRecipe("biomass_from_log", [<tag:items:minecraft:logs>], <item:indrev:biomass> * 4);
addBiomassRecipe("biomass_from_hay", [<item:minecraft:hay_block>], <item:indrev:biomass> * 18);
addBiomassRecipe("biomass_from_grass", [<item:minecraft:grass> * 4], <item:indrev:biomass>);
addBiomassRecipe("biomass_from_flowers", [<tag:items:minecraft:flowers> * 3], <item:indrev:biomass>);
addBiomassRecipe("biomass_from_carrot", [<item:minecraft:carrot> * 2], <item:indrev:biomass> * 3);
addBiomassRecipe("biomass_from_cactus", [<item:minecraft:cactus> * 3], <item:indrev:biomass> * 2);
addBiomassRecipe("biomass_from_beetroot", [<item:minecraft:beetroot> * 2], <item:indrev:biomass> * 3);
addBiomassRecipe("biomass_from_bamboo", [<item:minecraft:bamboo> * 4], <item:indrev:biomass>);

// biofuel recipe
<recipetype:create:compacting>.addJsonRecipe("biomass_to_biofuel", {
    "type": "create:compacting",
    "ingredients": [{ "item": "indrev:biomass"}],
    "results": [{
      "fluid": "kubejs:biofuel",
      "amount": 8100
    }]
  });

<recipetype:ad_astra:fuel_conversion>.addJsonRecipe("biofuel_to_fuel", {
  "type": "ad_astra:fuel_conversion",
  "input": "kubejs:biofuel",
  "output": "ad_astra:fuel",
  "conversion_ratio": 0.5
});