/*
 * ZenScript by Hikari_Nova & MCKLt
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为神秘时代配方内容
*/

import crafttweaker.item.IItemStack;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;

//水银合成
furnace.addRecipe(<thaumcraft:quicksilver>, <gregtech:meta_gem:268>, 0.0);

//移除合成
var items as IItemStack[] = [
    <thaumcraft:thaumium_helm>,
    <thaumcraft:thaumium_chest>,
    <thaumcraft:thaumium_legs>,
    <thaumcraft:thaumium_boots>,
    <thaumcraft:void_helm>,
    <thaumcraft:void_chest>,
    <thaumcraft:void_legs>,
    <thaumcraft:void_boots>,
    <thaumcraft:thaumium_sword>,
    <thaumcraft:thaumium_shovel>,
    <thaumcraft:thaumium_pick>,
    <thaumcraft:thaumium_axe>,
    <thaumcraft:thaumium_hoe>,
    <thaumcraft:void_sword>,
    <thaumcraft:void_shovel>,
    <thaumcraft:void_pick>,
    <thaumcraft:void_axe>,
    <thaumcraft:void_hoe>,
    <thaumcraft:jar_brace>,
    <thaumcraft:phial>
];

for i, item in items {
    var item = items[i];
    recipes.remove(item);
}

//移除奥术工作台合成
var arcaneItems as IItemStack[] = [
    <thaumcraft:thaumometer>,
    <thaumcraft:vis_resonator>,
    <thaumcraft:caster_basic>,
    <thaumcraft:cloth_chest>,
    <thaumcraft:cloth_legs>,
    <thaumcraft:cloth_boots>,
    <thaumcraft:goggles>,
    <thaumcraft:sanity_checker>,
    <thaumcraft:condenser_lattice>,
    <thaumcraft:condenser>,
    <thaumcraft:filter>,
    <thaumcraft:morphic_resonator>,
];

for i, item in arcaneItems {
    var item = arcaneItems[i];
    ArcaneWorkbench.removeRecipe(item);
}

//移除坩埚合成
    Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
    Crucible.removeRecipe(<thaumcraft:alumentum>);

recipes.addShaped(<thaumcraft:thaumium_helm>, [
    [<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
    [<ore:plateThaumium>, <ore:craftingToolHardHammer>, <ore:plateThaumium>]
    ]);

recipes.addShaped(<thaumcraft:thaumium_chest>, [
    [<ore:plateThaumium>, <ore:craftingToolHardHammer>, <ore:plateThaumium>],
    [<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
    [<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]
    ]);

recipes.addShaped(<thaumcraft:thaumium_legs>, [
    [<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
    [<ore:plateThaumium>, <ore:craftingToolHardHammer>, <ore:plateThaumium>],
    [<ore:plateThaumium>, null, <ore:plateThaumium>]
    ]);

recipes.addShaped(<thaumcraft:thaumium_boots>, [
    [<ore:plateThaumium>, null, <ore:plateThaumium>],
    [<ore:plateThaumium>, <ore:craftingToolHardHammer>, <ore:plateThaumium>]
    ]);

recipes.addShaped(<thaumcraft:void_helm>, [
    [<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>],
    [<ore:plateVoid>, <ore:craftingToolHardHammer>, <ore:plateVoid>]
    ]);

recipes.addShaped(<thaumcraft:void_chest>, [
    [<ore:plateVoid>, <ore:craftingToolHardHammer>, <ore:plateVoid>],
    [<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>],
    [<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>]
    ]);

recipes.addShaped(<thaumcraft:void_legs>, [
    [<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>],
    [<ore:plateVoid>, <ore:craftingToolHardHammer>, <ore:plateVoid>],
    [<ore:plateVoid>, null, <ore:plateVoid>]
    ]);

recipes.addShaped(<thaumcraft:void_boots>, [
    [<ore:plateVoid>, null, <ore:plateVoid>],
    [<ore:plateVoid>, <ore:craftingToolHardHammer>, <ore:plateVoid>]
    ]);

recipes.addShaped(<thaumcraft:thaumium_sword>, [
    [null, <ore:plateThaumium>, null],
    [<ore:craftingToolFile>, <ore:plateThaumium>, <ore:craftingToolHardHammer>],
    [null, <ore:stickWood>, null]
    ]);

recipes.addShaped(<thaumcraft:thaumium_shovel>, [
    [<ore:craftingToolFile>, <ore:plateThaumium>, <ore:craftingToolHardHammer>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]
    ]);

recipes.addShapedMirrored(<thaumcraft:thaumium_pick>, [
    [<ore:plateThaumium>, <ore:ingotThaumium>, <ore:ingotThaumium>],
    [<ore:craftingToolFile>, <ore:stickWood>, <ore:craftingToolHardHammer>],
    [null, <ore:stickWood>, null]
    ]);

recipes.addShaped(<thaumcraft:thaumium_axe>, [
    [<ore:plateThaumium>, <ore:ingotThaumium>, <ore:craftingToolHardHammer>],
    [<ore:plateThaumium>, <ore:stickWood>, null],
    [<ore:craftingToolFile>, <ore:stickWood>, null]
    ]);

recipes.addShaped(<thaumcraft:thaumium_hoe>, [
    [<ore:plateThaumium>, <ore:ingotThaumium>, <ore:craftingToolHardHammer>],
    [<ore:craftingToolFile>, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]
    ]);

recipes.addShaped(<thaumcraft:void_sword>, [
    [null, <ore:plateVoid>, null],
    [<ore:craftingToolFile>, <ore:plateVoid>, <ore:craftingToolHardHammer>],
    [null, <ore:stickWood>, null]
    ]);

recipes.addShaped(<thaumcraft:void_shovel>, [
    [<ore:craftingToolFile>, <ore:plateVoid>, <ore:craftingToolHardHammer>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]
    ]);

recipes.addShapedMirrored(<thaumcraft:void_pick>, [
    [<ore:plateVoid>, <ore:ingotVoid>, <ore:ingotVoid>],
    [<ore:craftingToolFile>, <ore:stickWood>, <ore:craftingToolHardHammer>],
    [null, <ore:stickWood>, null]
    ]);

recipes.addShaped(<thaumcraft:void_axe>, [
    [<ore:plateVoid>, <ore:ingotVoid>, <ore:craftingToolHardHammer>],
    [<ore:plateVoid>, <ore:stickWood>, null],
    [<ore:craftingToolFile>, <ore:stickWood>, null]
    ]);

recipes.addShaped(<thaumcraft:void_hoe>, [
    [<ore:plateVoid>, <ore:ingotVoid>, <ore:craftingToolHardHammer>],
    [<ore:craftingToolFile>, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]
    ]);
recipes.addShaped(<thaumcraft:jar_brace> * 4,[
    [<ore:screwBrass>, <ore:boltWood>, <ore:screwBrass>],
    [<ore:boltWood>, <ore:craftingToolScrewdriver>, <ore:boltWood>],
    [<ore:screwBrass>, <ore:boltWood>, <ore:screwBrass>]
    ]);
recipes.addShaped(<thaumcraft:phial>,[
    [<minecraft:glass_bottle>, <ore:boltRubber>],
    [<thaumcraft:salis_mundus>, <ore:craftingToolSoftHammer>]
    ]);

//奥术工作台合成
ArcaneWorkbench.registerShapedRecipe("thaumometer", "FIRSTSTEPS@3", 50,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumcraft:thaumometer>, [
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>],
    [<ore:plateGold>,<ore:lensGlass>,<ore:plateGold>],
    [<ore:screwGold>, <ore:plateGold>, <ore:screwGold>]
    ]);

ArcaneWorkbench.registerShapedRecipe("vis_resonator", "UNLOCKAUROMANCY", 100,
    [<aspect:aer> * 2, <aspect:aqua> * 2], <thaumcraft:vis_resonator>, [
    [<ore:ringSteel>, <ore:craftingToolFile>],
    [<ore:craftingToolWrench>, <ore:gemFlawlessNetherQuartz>]
    ]);

ArcaneWorkbench.registerShapedRecipe("caster_basic", "UNLOCKAUROMANCY", 200,
    [<aspect:aer> * 2, <aspect:aqua> * 2, <aspect:ordo> * 2, <aspect:perditio> * 2, <aspect:ignis> * 2, <aspect:terra> * 2], <thaumcraft:caster_basic>, [
    [<ore:leather>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:leather>, <thaumcraft:vis_resonator>, <ore:plateSteel>],
    [<thaumcraft:thaumometer>, <ore:leather>, <ore:leather>]
    ]);

ArcaneWorkbench.registerShapedRecipe("robechest", "UNLOCKINFUSION", 150,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumcraft:cloth_chest>, [
    [<thaumcraft:fabric>, <ore:craftingToolSoftHammer>, <thaumcraft:fabric>],
    [<ore:ringRubber>, <thaumcraft:fabric>, <ore:ringRubber>],
    [<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>]
    ]);

ArcaneWorkbench.registerShapedRecipe("robelegs", "UNLOCKINFUSION", 150,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumcraft:cloth_legs>, [
    [<thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:fabric>],
    [<ore:ringRubber>, <ore:craftingToolSoftHammer>, <ore:ringRubber>],
    [<thaumcraft:fabric>,null,<thaumcraft:fabric>]
    ]);

ArcaneWorkbench.registerShapedRecipe("robeboots", "UNLOCKINFUSION", 150,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumcraft:cloth_boots>, [
    [<thaumcraft:fabric>, <ore:craftingToolSoftHammer>,<thaumcraft:fabric>],
    [<ore:plateRubber>,null,<ore:plateRubber>]
    ]);

ArcaneWorkbench.registerShapedRecipe("goggles", "UNLOCKARTIFICE", 100,
    [<aspect:aer> * 2, <aspect:aqua> * 2, <aspect:ordo> * 2, <aspect:perditio> * 2, <aspect:ignis> * 2, <aspect:terra> * 2], <thaumcraft:goggles>, [
    [<ore:screwBrass>,<ore:leather>,<ore:screwBrass>],
    [<ore:leather>,<ore:craftingToolHardHammer>,<ore:leather>],[<thaumcraft:thaumometer>,<ore:plateBrass>,<thaumcraft:thaumometer>]
    ]);

ArcaneWorkbench.registerShapedRecipe("sanitychecker", "WARP", 50,
    [<aspect:ordo> * 2, <aspect:perditio> * 2], <thaumcraft:sanity_checker>, [
    [<ore:boltBrass>,<ore:screwBrass>,<ore:craftingToolScrewdriver>],
    [<ore:ringBrass>,<thaumcraft:brain>,<ore:screwBrass>],[<thaumcraft:mirrored_glass>,<ore:ringBrass>,<ore:boltBrass>]
    ]);

ArcaneWorkbench.registerShapedRecipe("condenserlattice", "FLUXCLEANUP", 200,
    [<aspect:terra> * 5, <aspect:aer> * 5], <thaumcraft:condenser_lattice>, [
    [<ore:screwThaumium>,<ore:plateNetherQuartz>,<ore:craftingToolHardHammer>],
    [<ore:plateNetherQuartz>,<thaumcraft:filter>,<ore:plateNetherQuartz>],[<ore:craftingToolWrench>,<ore:plateNetherQuartz>,<ore:screwThaumium>]
    ]);

ArcaneWorkbench.registerShapedRecipe("condenser", "FLUXCLEANUP", 500,
    [<aspect:aqua> * 10, <aspect:aer> * 10, <aspect:perditio> * 10], <thaumcraft:condenser>, [
    [<ore:plateBrass>,<thaumcraft:morphic_resonator>,<ore:plateBrass>],
    [<ore:plateBrass>,<gregtech:machine:1612>,<ore:plateBrass>],[<thaumcraft:mechanism_complex>,<thaumcraft:tube_oneway>,<thaumcraft:mechanism_complex>]
    ]);

ArcaneWorkbench.registerShapedRecipe("Filter", "BASEALCHEMY", 30,
    [<aspect:aqua> * 2], <thaumcraft:filter> * 2, [
    [<ore:screwSteel>, <ore:craftingToolSaw>, <ore:screwSteel>],
    [<ore:ringGold>, <thaumcraft:log_silverwood>, <ore:ringGold>],
    [<ore:screwSteel>,<ore:craftingToolScrewdriver>,<ore:screwSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("MorphicResonator", "BASEALCHEMY", 100,
    [<aspect:ignis> * 2, <aspect:aer> * 2], <thaumcraft:morphic_resonator>, [
    [<ore:screwThaumium>, <ore:paneGlass>, <ore:screwThaumium>],
    [<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>],
    [<ore:screwThaumium>,<ore:paneGlass>,<ore:screwThaumium>]
    ]);

ArcaneWorkbench.registerShapedRecipe("Alembic", "ESSENTIASMELTER@2", 100,
    [<aspect:aqua> * 2], <thaumcraft:alembic>, [
    [<ore:screwBrass>, <ore:ringBrass>, <ore:screwBrass>],
    [<thaumcraft:filter>, <gregtech:machine:1610>, <thaumcraft:filter>],
    [<ore:screwBrass>, <ore:ringBrass>, <ore:screwBrass>]
    ]);

ArcaneWorkbench.registerShapedRecipe("EssentiaSmelter", "ESSENTIASMELTER@2", 100,
    [<aspect:ignis> * 4], <thaumcraft:smelter_basic>, [
    [<ore:plateBrass>, <thaumcraft:crucible>, <ore:plateBrass>],
    [<gregtech:meta_item_1:142>, <gregtech:meta_item_1:97>, <gregtech:meta_item_1:142>],
    [<ore:craftingToolHardHammer>, <ore:craftingFurnace>, <ore:craftingToolWrench>]
    ]);

ArcaneWorkbench.registerShapedRecipe("WardedJar", "WARDEDJARS", 20, [], <thaumcraft:jar_normal>, [
    [<ore:paneGlass>, <ore:plateRubber>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:craftingToolSoftHammer>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
    ]);

ArcaneWorkbench.registerShapedRecipe("Tube", "TUBES", 20, [], <thaumcraft:tube> * 2, [
    [<ore:screwThaumium>, <ore:nuggetBrass>, <ore:screwThaumium>],
    [<ore:nuggetQuicksilver>, <ore:pipeTinyFluidSteel>, <ore:nuggetQuicksilver>],
    [<ore:screwThaumium>, <ore:nuggetBrass>, <ore:screwThaumium>]
    ]);

ArcaneWorkbench.registerShapedRecipe("TubeValve", "TUBES", 30, [], <thaumcraft:tube_valve>, [
    [<ore:craftingToolScrewdriver>, <ore:screwSteel>],
    [<thaumcraft:jar_brace>, <thaumcraft:tube>]
    ]);

ArcaneWorkbench.registerShapedRecipe("TubeFilter", "TUBES", 30, [], <thaumcraft:tube_filter>, [
    [<ore:craftingToolScrewdriver>, <ore:screwSteel>],
    [<thaumcraft:tube>, <thaumcraft:filter>]
    ]);

ArcaneWorkbench.registerShapedRecipe("AlchemicalConstruct", "TUBES", 125,
    [<aspect:ignis> * 3, <aspect:ordo> * 3], <thaumcraft:metal_alchemical>, [
    [<ore:screwSteel>, <thaumcraft:tube_buffer>, <ore:ringSteel>],
    [<thaumcraft:tube_valve>, <ore:blockThaumium>, <thaumcraft:tube_filter>],[<ore:craftingToolHardHammer>, <ore:springSteel>, <ore:screwSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("TubeOneway", "TUBES", 20,
    [<aspect:aqua> * 2], <thaumcraft:tube_oneway>, [
    [<ore:craftingToolScrewdriver>, <ore:screwSteel>],
    [<thaumcraft:tube>, <ore:ringThaumium>]
    ]);

ArcaneWorkbench.registerShapedRecipe("TubeRestrict", "TUBES", 20,
    [<aspect:terra> * 2], <thaumcraft:tube_restrict>, [
    [<ore:craftingToolScrewdriver>, <ore:screwSteel>],
    [<thaumcraft:tube>, <ore:springSmallIron>]
    ]);

ArcaneWorkbench.registerShapedRecipe("EssentiaSmelterThaumium", "ESSENTIASMELTERTHAUMIUM", 300,
    [<aspect:ignis> * 4], <thaumcraft:smelter_thaumium>, [
    [<ore:plateThaumium>, <thaumcraft:smelter_basic>, <ore:plateThaumium>],
    [<ore:plateThaumium>, <gregtech:meta_item_1:98>, <ore:plateThaumium>],[<thaumcraft:alumentum>, <thaumcraft:metal_alchemical>, <thaumcraft:alumentum>]
    ]);

ArcaneWorkbench.registerShapedRecipe("mechanism_simple", "BASEARTIFICE", 50,
    [<aspect:ignis> * 2, <aspect:aqua> * 2], <thaumcraft:mechanism_simple>, [
    [<ore:craftingToolHardHammer>, <ore:gearBrass>, <ore:screwSteel>],
    [<ore:screwSteel>,<ore:ringIron>, <ore:craftingToolWrench>],[<ore:plateIron>, <ore:plateIron>, <ore:screwSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("mechanism_complex", "BASEARTIFICE", 100,
    [<aspect:ignis> * 2, <aspect:aqua> * 2], <thaumcraft:mechanism_complex>, [
    [<ore:craftingToolHardHammer>, <ore:screwThaumium>, <thaumcraft:mechanism_simple>],
    [<thaumcraft:mechanism_simple>, <ore:ringSteel>, <ore:craftingPiston>],[<ore:plateThaumium>, <ore:plateThaumium>, <ore:screwThaumium>]
    ]);

ArcaneWorkbench.registerShapedRecipe("ArcaneLamp", "ARCANELAMP", 125,
    [<aspect:ignis> * 2, <aspect:aer> * 2], <thaumcraft:lamp_arcane>, [
    [<ore:screwSteel>, <ore:ringSteel>, <ore:screwSteel>],
    [<ore:stickSteel>, <ore:blockAmber>, <ore:stickSteel>],[<ore:screwSteel>, <ore:ringSteel>, <ore:screwSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("bellows", "BELLOWS", 100,
    [<aspect:aer> * 2], <thaumcraft:bellows>, [
    [<ore:screwSteel>, <ore:leather>, <ore:screwSteel>],
    [<ore:craftingToolScrewdriver>, <ore:springGold>, <ore:ingotSteel>],[<ore:screwSteel>, <ore:leather>, <ore:screwSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("patterncrafter", "ARCANEPATTERNCRAFTER", 100,
    [<aspect:terra> * 2, <aspect:aqua> * 2, <aspect:ordo> * 2], <thaumcraft:pattern_crafter>, [
    [<thaumcraft:vis_resonator>, <minecraft:hopper>, <gregtech:meta_item_1:307>],
    [<thaumcraft:mechanism_simple>, <minecraft:crafting_table>, <thaumcraft:mechanism_simple>],[<gregtech:meta_item_1:157>, <thaumcraft:log_greatwood>, null]
    ]);

ArcaneWorkbench.registerShapedRecipe("GrappleGunTip", "GRAPPLEGUN", 50,
    [<aspect:terra> * 2], <thaumcraft:grapple_gun_tip>, [
    [<thaumcraft:nugget:10>, <thaumcraft:nugget:10>, <minecraft:tripwire_hook>],
    [<ore:plateRubber>, <ore:ringBrass>, <thaumcraft:nugget:10>],[<ore:plateRubber>, <ore:plateRubber>, <thaumcraft:nugget:10>]
    ]);

ArcaneWorkbench.registerShapedRecipe("GrappleGunSpool", "GRAPPLEGUN", 50,
    [<aspect:aqua> * 2], <thaumcraft:grapple_gun_spool>, [
    [<ore:wireFineSteel>, <ore:wireFineSteel>, <minecraft:tripwire_hook>],
    [<ore:wireFineSteel>, <thaumcraft:mechanism_simple>, <ore:wireFineSteel>],[<ore:wireFineSteel>, <ore:wireFineSteel>, <ore:wireFineSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("ARCANEEAR", "ARCANEEAR", 20,
    [<aspect:aer> * 2], <thaumcraft:arcane_ear>, [
    [<ore:plateBrass>, <gregtech:meta_item_1:232>, <ore:plateBrass>],
    [<ore:screwSteel>, <thaumcraft:mechanism_simple>, <ore:screwSteel>],[<ore:slabWood>, <ore:plateRedAlloy>, <ore:slabWood>]
    ]);

ArcaneWorkbench.registerShapedRecipe("VisGenerator", "VISGENERATOR", 100,
    [<aspect:ignis> * 2, <aspect:ordo> * 2], <thaumcraft:vis_generator>, [
    [<ore:plankTreatedWood>, <ore:plateRedAlloy>, <ore:plankTreatedWood>],
    [<thaumcraft:nugget:10>, <gregtech:machine:985>, <thaumcraft:nugget:10>],[<ore:plankTreatedWood>, <thaumcraft:vis_resonator>, <ore:plankTreatedWood>]
    ]);

//坩埚合成
Crucible.registerRecipe("alumentum", "ALUMENTUM",<thaumcraft:alumentum>, <ore:dustCarbon>,
    [<aspect:potentia>*10,<aspect:ignis>*10,<aspect:perditio>*5]);

Crucible.registerRecipe("alumentum1", "ALUMENTUM",<thaumcraft:alumentum>, <ore:dustCharcoal>,
    [<aspect:potentia>*10,<aspect:ignis>*10,<aspect:perditio>*5]);

Crucible.registerRecipe("nitor", "UNLOCKALCHEMY",<thaumcraft:nitor_yellow>, <ore:plateGlowstone>,
    [<aspect:ignis>*10,<aspect:potentia>*10,<aspect:lux>*10]);

//注魔合成
Infusion.registerRecipe("mirror", "MIRROR", <thaumcraft:mirror>, 4,
    [<aspect:motus> * 25, <aspect:permutatio> * 25, <aspect:tenebrae> * 25, <aspect:stellae> * 25], <thaumcraft:mirrored_glass>,
    [<ore:plateGold>, <ore:plateEnderPearl>, <ore:plateGold>, <ore:plateGold>, <ore:plateEnderPearl>, <ore:plateGold>]);

Infusion.registerRecipe("mirroressentia", "MIRRORESSENTIA", <thaumcraft:mirror_essentia>, 5,
    [<aspect:aqua> * 25, <aspect:motus> * 25, <aspect:permutatio> * 25, <aspect:luna> * 25], <thaumcraft:mirrored_glass>,
    [<ore:plateSteel>, <ore:plateEnderPearl>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateEnderPearl>, <ore:plateSteel>]);

Infusion.registerRecipe("mirrorhand", "MIRRORHAND", <thaumcraft:hand_mirror>, 7.5,
    [<aspect:instrumentum> * 50, <aspect:motus> * 50], <thaumcraft:mirror>,
    [<ore:stickTreatedWood>, <ore:paperMap>, <thaumicwonders:structure_diviner>, <ore:gemFlawlessGarnetYellow>]);

Infusion.registerRecipe("causalityCollapser", "RIFTCLOSER", <thaumcraft:causality_collapser>, 15,
    [<aspect:alienis> * 75, <aspect:vitium> * 75], <minecraft:tnt>,
    [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 100, key: "vitium"}]}), <ore:nitor>, <thaumcraft:vis_resonator>, <ore:blockRedstone>, <thaumcraft:morphic_resonator>, <thaumcraft:alumentum>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 100, key: "vitium"}]}),<ore:nitor>, <thaumcraft:vis_resonator>, <ore:blockRedstone>, <thaumcraft:morphic_resonator>, <thaumcraft:alumentum>]);
