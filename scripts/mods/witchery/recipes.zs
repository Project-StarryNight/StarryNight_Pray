/*
 * ZenScript by Hikari_Nova & MCKLt
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为巫术配方内容
*/

import crafttweaker.item.IItemStack;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;

var items as IItemStack[] = [
<witchery:witches_oven>,
<witchery:fume_funnel>,
<witchery:distillery>,
<witchery:spinning_wheel>,
<witchery:kettle>,
<witchery:poppet>,
<witchery:attuned_stone>,
<witchery:altar> * 3,
<witchery:quartz_sphere>,
<witchery:anointing_paste>,
<witchery:chalice>,
<witchery:candelabra>,
<witchery:filtered_fume_funnel> * 1,
<witchery:circle_talisman>,
<witchery:ritual_circle_glyph> * 2,
<witchery:fume_filter>,
<witchery:arthana>
            ];

for i, item in items {
    var item = items[i];
    recipes.remove(item);
}

ArcaneWorkbench.registerShapedRecipe("witches_oven", "WITCHESOVEN", 500,
    [<aspect:ignis> * 2, <aspect:aqua> * 2,<aspect:perditio> * 2], <witchery:witches_oven>, [
    [<ore:plateDarkSteel>, <thaumcraft:metal_alchemical>, <ore:plateDarkSteel>],
    [<thaumcraft:smelter_vent>, <thaumcraft:smelter_thaumium>, <thaumcraft:smelter_vent>],
    [<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:plateDarkSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("fume_funnel", "FUMEFUNNEL", 300,
    [<aspect:aqua> * 4], <witchery:fume_funnel>, [
    [<ore:plateDarkSteel>, <ore:gtceHardHammers>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateGlowstone>, <ore:plateDarkSteel>],
    [<gregtech:machine:1614>, <thaumcraft:smelter_aux>, <gregtech:machine:1614>]
    ]);

ArcaneWorkbench.registerShapedRecipe("distillery", "MACHINES", 200,
    [<aspect:aqua> * 4], <witchery:distillery>, [
    [<witchery:clay_jar>, <ore:plateDarkSteel>, <witchery:clay_jar>],
    [<ore:plateElectrum>, <thaumcraft:alembic>, <ore:plateElectrum>],
    [<ore:plateDarkSteel>, <witchery:attuned_stone>, <ore:plateDarkSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("spinning_wheel", "MACHINES", 150,
    [<aspect:aer> * 2, <aspect:ordo> * 2], <witchery:spinning_wheel>, [
    [<minecraft:item_frame>, <minecraft:item_frame>, <ore:wireFineAluminium>],
    [<minecraft:item_frame>, <ore:stickStainlessSteel>, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<witchery:attuned_stone>, <ore:stickTreatedWood>]
    ]);

ArcaneWorkbench.registerShapedRecipe("kettle", "MACHINES", 150,
    [<aspect:ignis> * 2, <aspect:aqua> * 2], <witchery:kettle>, [
    [<ore:stickTreatedWood>, <ore:wireFineSteel>, <ore:stickTreatedWood>],
    [<ore:wireFineSteel>, <witchery:attuned_stone>, <ore:wireFineSteel>],
    [null,<thaumcraft:crucible>, null]
    ]);

ArcaneWorkbench.registerShapedRecipe("poppet", "POPPET", 150,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:poppet>, [
    [<ore:itemEnchantedFabric>, <witchery:spanish_moss>, <ore:itemEnchantedFabric>],
    [<witchery:bone_needle>, <witchery:spanish_moss>, <gregtech:meta_wire_fine:277>],
    [<ore:itemEnchantedFabric>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "imperium"}]}), <ore:itemEnchantedFabric>]
    ]);

ArcaneWorkbench.registerShapedRecipe("attunedstone", "ATTUNEDSTONE", 150,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:attuned_stone>, [
    [<ore:dustMagic>, <witchery:magic_whiff>, <ore:dustMagic>],
    [<ore:dustMagic>, <ore:gemFlawlessDiamond>, <ore:dustMagic>],
    [<ore:dustMagic>,<minecraft:lava_bucket>, <ore:dustMagic>]
    ]);

ArcaneWorkbench.registerShapedRecipe("witcheryaltar", "WALTAR", 150,
    [<aspect:aer> * 2, <aspect:aqua> * 2, <aspect:ordo> * 2, <aspect:perditio> * 2, <aspect:ignis> * 2, <aspect:terra> * 2], <witchery:altar> * 2, [
    [<witchery:horned_one_exhale>, <minecraft:dragon_breath>, <witchery:goddess_breath>],
    [<thaumcraft:stone_arcane_brick>, <witchery:rowan_log>, <thaumcraft:stone_arcane_brick>],
    [<thaumcraft:stone_arcane_brick>,<witchery:rowan_log>, <thaumcraft:stone_arcane_brick>]
    ]);

ArcaneWorkbench.registerShapedRecipe("quartzsphere", "QUARTZ", 200,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:quartz_sphere> * 2, [
    [<ore:plateNetherQuartz>, <ore:plateCertusQuartz>, <ore:plateNetherQuartz>],
    [<ore:plateQuartzite>, <witchery:rowan_log>, <ore:plateQuartzite>],
    [<ore:plateNetherQuartz>,<ore:plateCertusQuartz>, <ore:plateNetherQuartz>]
    ]);

ArcaneWorkbench.registerShapedRecipe("chalice", "RELICS", 100,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:chalice>, [
    [<ore:foilGold>, <witchery:attuned_stone>, <ore:foilGold>],
    [<ore:foilGold>, <ore:plateGold>, <ore:foilGold>],
    [<ore:dustMagic>,<ore:ingotGold>, <ore:dustMagic>]
    ]);

ArcaneWorkbench.registerShapedRecipe("fumefilter", "FUMEFILTER", 250,
    [], <witchery:fume_filter>, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:plateThaumium>, <witchery:charged_attuned_stone>, <ore:plateThaumium>],
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);

ArcaneWorkbench.registerShapedRecipe("candelabra", "RELICS", 100,
    [<aspect:aer> * 2, <aspect:ignis> * 2, <aspect:ordo> * 2], <witchery:candelabra>, [
    [<thaumcraft:candle_white>, <thaumcraft:candle_white>, <thaumcraft:candle_white>],
    [<ore:stickSteel>, <witchery:attuned_stone>, <ore:stickSteel>],
    [<ore:plateSteel>, <ore:stickThaumium>, <ore:plateSteel>]
    ]);

ArcaneWorkbench.registerShapedRecipe("circle_talisman", "TAILISMAN", 75,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:circle_talisman>, [
    [<ore:stickGold>, <ore:stickLongGold>, <ore:stickGold>],
    [<ore:stickLongGold>, <ore:gemExquisiteDiamond>, <ore:stickLongGold>],
    [<ore:stickGold>, <ore:stickLongGold>, <ore:stickGold>]
    ]);

ArcaneWorkbench.registerShapedRecipe("glyph", "GLYPH", 150,
    [], <witchery:ritual_circle_glyph> * 2, [
    [<witchery:wood_ash>, <witchery:goddess_tear>, <witchery:wood_ash>],
    [<witchery:wood_ash>, <witchery:gypsum>, <witchery:wood_ash>],
    [<witchery:wood_ash>, <witchery:gypsum>, <witchery:wood_ash>]
    ]);

ArcaneWorkbench.registerShapedRecipe("arthana", "ARTHANA", 200,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:arthana>, [
    [<tconstruct:hand_guard>.withTag({Material: "constantan"}), <ore:gtceScrewdrivers>, <tconstruct:sword_blade>.withTag({Material: "electrum"})],
    [<ore:screwThaumium>, <ore:gemExquisiteEmerald>, <ore:gtceWrenches>],
    [<ore:stickTreatedWood>, <ore:screwThaumium>, <tconstruct:hand_guard>.withTag({Material: "constantan"})]
    ]);

Crucible.registerRecipe("warm_blood", "WARMBLOOD",<witchery:warm_blood>, <tconstruct:edible:33>,
    [<aspect:exanimis> * 10,<aspect:infernum> * 10,<aspect:desiderium> * 10]);

Infusion.registerRecipe("filteredfumefunnel", "FILTERED_FUME_FUNNEL", <witchery:filtered_fume_funnel>, 4,
    [<aspect:fabrico> * 30, <aspect:permutatio> * 30, <aspect:ordo> * 30], <witchery:fume_funnel>,
    [<witchery:fume_filter>, <ore:stickThaumium>, <thaumcraft:filter>, <ore:stickThaumium>, <thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_power"}), <ore:stickThaumium>, <thaumcraft:filter>, <ore:stickThaumium>]);
