import crafttweaker.item.IItemStack;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;

var items as IItemStack[] = [
<bloodmagic:soul_snare> * 4,
<bloodmagic:altar>
            ];

for i, item in items {
    var item = items[i];
    recipes.remove(item);
}

ArcaneWorkbench.registerShapedRecipe("soul_snare", "", 150,
    [<aspect:aer> * 3, <aspect:aqua> * 3, <aspect:ordo> * 3, <aspect:perditio> * 3, <aspect:ignis> * 3, <aspect:terra> * 3], <bloodmagic:soul_snare> * 4, [
    [<ore:manaString>, <ore:foilStainlessSteel>, <ore:manaString>],
    [<ore:foilStainlessSteel>, <thaumicaugmentation:material:5>, <ore:foilStainlessSteel>],
    [<ore:manaString>, <ore:foilStainlessSteel>, <ore:manaString>]
    ]);

Infusion.registerRecipe("BALTAR", "", <bloodmagic:altar>, 16,
    [<aspect:victus> * 125, <aspect:alkimia> * 100, <aspect:alienis> * 75, <aspect:spiritus> * 50, <aspect:sensus> * 25, <aspect:caeles> * 10], <thaumcraft:crucible>,
    [<witchery:charged_attuned_stone>, <witchery:demonic_blood>, <thaumadditions:crystal_block>, <thaumcraft:stone_arcane>, <witchery:demonic_blood>, <thaumcraft:stone_arcane>, <bloodmagic:monster_soul>, <thaumcraft:stone_arcane>, <witchery:demonic_blood>, <thaumcraft:stone_arcane>,<thaumadditions:crystal_block>, <witchery:demonic_blood>]);
