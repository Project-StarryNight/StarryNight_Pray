import crafttweaker.item.IItemStack;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;

var arcaneItems as IItemStack[] = [
<thaumicaugmentation:gauntlet:*>,
<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_experience"}),
<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_emptiness"}),
<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_nether"}),
<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_overworld"}),
<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_end"}),
<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_frenzy"})
];

for i, item in arcaneItems {
    ArcaneWorkbench.removeRecipe(item);
}

Crucible.removeRecipe(<thaumicaugmentation:augment_builder_effect:*>);

Infusion.removeRecipe(<thaumicaugmentation:gauntlet:*>);

ArcaneWorkbench.registerShapedRecipe("gauntlet_thaumium", "GAUNTLET_THAUMIUM", 300,
    [<aspect:aer> * 3, <aspect:aqua> * 3, <aspect:ordo> * 3, <aspect:perditio> * 3, <aspect:ignis> * 3, <aspect:terra> * 3], <thaumicaugmentation:gauntlet>.withTag({color: 8022208}), [
    [<thaumcraft:vis_resonator>, <ore:plateThaumium>, <ore:lensSapphire>],
    [<ore:plateThaumium>, <thaumcraft:caster_basic>, <ore:plateThaumium>],
    [<ore:ringThaumium>, <ore:plateThaumium>, <thaumcraft:vis_resonator>]
    ]);

Crucible.registerRecipe("effect_provider_power", "GAUNTLET_AUGMENTATION@1",<thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_power"}), <ore:gemExquisiteRuby>,
    [<aspect:aversio>*15,<aspect:vitreus>*10,<aspect:praecantatio>*5]);

Crucible.registerRecipe("effect_provider_cast_speed", "GAUNTLET_AUGMENTATION@1", <thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_cast_speed"}), <ore:gemExquisiteDiamond>,
    [<aspect:potentia>*15,<aspect:vitreus>*10,<aspect:praecantatio>*5]);

Crucible.registerRecipe("effect_provider_cost", "GAUNTLET_AUGMENTATION@1",<thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_cost"}), <ore:gemExquisiteAmethyst>,
    [<aspect:auram>*15,<aspect:vitreus>*10,<aspect:praecantatio>*5]);

ArcaneWorkbench.registerShapedRecipe("strength_provider_experience", "EXPERIENCE_MODIFIER", 100,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_experience"}), [
    [<actuallyadditions:item_solidified_experience>, <thaumcraft:curiosity_band>, <actuallyadditions:item_solidified_experience>],
    [<ore:gemFlawlessEmerald>, <thaumcraft:vis_resonator>, <ore:gemFlawlessEmerald>],
    [<actuallyadditions:item_solidified_experience>, <ore:gemExquisiteLapis>, <actuallyadditions:item_solidified_experience>]
    ]);

ArcaneWorkbench.registerShapedRecipe("strength_provider_frenzy", "FRENZY_MODIFIER", 100,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_frenzy"}), [
    [<minecraft:golden_sword:*>, <thaumcraft:module:1>, <minecraft:golden_sword:*>],
    [<ore:screwBrass>, <thaumcraft:vis_resonator>, <ore:screwBrass>],
    [<minecraft:golden_sword:*>, <thaumcraft:mind>, <minecraft:golden_sword:*>]
    ]);

ArcaneWorkbench.registerShapedRecipe("strength_end", "DIMENSIONAL_MODIFIERS", 50,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_end"}), [
    [<ore:screwAluminium>, <deepmoblearning:living_matter_extraterrestrial>, <ore:screwAluminium>],
    [<deepmoblearning:living_matter_extraterrestrial>, <thaumcraft:vis_resonator>, <deepmoblearning:living_matter_extraterrestrial>],
    [<ore:screwAluminium>, <deepmoblearning:living_matter_extraterrestrial>, <ore:screwAluminium>]
    ]);

ArcaneWorkbench.registerShapedRecipe("strength_overworld", "DIMENSIONAL_MODIFIERS", 50,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_overworld"}), [
    [<ore:screwIron>, <deepmoblearning:living_matter_overworldian>, <ore:screwIron>],
    [<deepmoblearning:living_matter_overworldian>, <thaumcraft:vis_resonator>, <deepmoblearning:living_matter_overworldian>],
    [<ore:screwIron>, <deepmoblearning:living_matter_overworldian>, <ore:screwIron>]
    ]);

ArcaneWorkbench.registerShapedRecipe("strength_nether", "DIMENSIONAL_MODIFIERS", 50,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_nether"}), [
    [<ore:screwNetherQuartz>, <deepmoblearning:living_matter_hellish>, <ore:screwNetherQuartz>],
    [<deepmoblearning:living_matter_hellish>, <thaumcraft:vis_resonator>, <deepmoblearning:living_matter_hellish>],
    [<ore:screwNetherQuartz>, <deepmoblearning:living_matter_hellish>, <ore:screwNetherQuartz>]
    ]);

ArcaneWorkbench.registerShapedRecipe("strength_emptiness", "EMPTINESS_MODIFIER", 75,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_emptiness"}), [
    [<ore:screwVoid>, <ore:stoneVoid>, <ore:screwVoid>],
    [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 100, key: "vitium"}]}), <thaumcraft:vis_resonator>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 100, key: "vitium"}]})],
    [<ore:screwVoid>, <thaumicaugmentation:stone:1>, <ore:screwVoid>]
    ]);

Infusion.registerRecipe("GAUNTLET_VOID", "GAUNTLET_VOID@1", <thaumicaugmentation:gauntlet:1>.withTag({color: 2498903}), 6,
    [<aspect:alienis> * 75, <aspect:vacuos> * 75, <aspect:potentia> * 50], <thaumicaugmentation:gauntlet:0>,
    [<thaumcraft:salis_mundus>, <ore:itemEnchantedFabric>, <ore:plateVoid>, <ore:plateVoid>, <thaumcraft:voidseer_charm>, <ore:plateVoid>, <ore:plateVoid>, <ore:itemEnchantedFabric>, <thaumcraft:salis_mundus>, <gregtech:meta_item_1:218>]);
