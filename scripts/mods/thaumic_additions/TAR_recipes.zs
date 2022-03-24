import crafttweaker.item.IItemStack;
import mods.thaumcraft.ArcaneWorkbench;

var arcaneItems as IItemStack[] = [
<thaumadditions:knowledge_tome>
];

for i, item in arcaneItems {
    ArcaneWorkbench.removeRecipe(item);
}

ArcaneWorkbench.registerShapedRecipe("konwledgetome", "TAR_KNOWLEDGE_TOME", 3000,
    [<aspect:aer> * 64, <aspect:aqua> * 64, <aspect:ordo> * 64, <aspect:perditio> * 64, <aspect:ignis> * 64, <aspect:terra> * 64], <thaumadditions:knowledge_tome>, [
    [<thaumcraft:curio:1>, <thaumicwonders:timewinder:*>, <thaumcraft:curio:2>],
    [<thaumcraft:curio:3>,<thaumcraft:thaumonomicon>,<thaumcraft:curio:0>],
    [<thaumcraft:curio:4>, <thaumcraft:curio:6>, <thaumcraft:curio:5>]
    ]);