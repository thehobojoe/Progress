import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;

public expand IIngredient[] {
  public as IData {
    var list = new ListData();
    for a in this { list.add(a as IData); } 
    return list;
  }
}


function addCreateMixing(name as string, itemsIn as IIngredient[], itemOut as IIngredient) as void {
  <recipetype:create:mixing>.addJsonRecipe(name, {
    "type": "create:mixing",
    "heatRequirement": "heated",
    "ingredients": itemsIn as IData,
    "results": [
      itemOut as IData,
    ]
  }
  );
}

addCreateMixing("mix_steel_dust", [<tag:items:c:iron_dusts>, <tag:items:c:coal_dusts>], <item:indrev:steel_dust>);
addCreateMixing("mix_nikolite_ingot", [<item:indrev:nikolite_dust>, <item:minecraft:iron_ingot>], <item:indrev:nikolite_ingot>);
