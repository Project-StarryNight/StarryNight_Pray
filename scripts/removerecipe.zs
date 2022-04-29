import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.recipes.ICraftingRecipe;

for ench in oreDict.entries {
    var ore as string = ench.name;
    var enchIngot as IItemStack = ench.firstItem;
    if (ore.startsWith("ingot") && enchIngot.definition.owner != "gregtech") {
        var key as string = ore.substring("ingot".length);
        var block as IOreDictEntry = oreDict.get("block" ~ key);
        var nugget as IOreDictEntry = oreDict.get("nugget" ~ key);
        var ingot as IItemStack = oreDict.get("ingot" ~ key).firstItem;
        if (!nugget.empty && !block.empty) {
            var enchBlock as IItemStack = oreDict.get("block"~key).firstItem;
            var enchNugget as IItemStack = oreDict.get("nugget"~key).firstItem;
            recipes.remove(enchBlock);
            recipes.remove(enchNugget);
        }
    }
}
