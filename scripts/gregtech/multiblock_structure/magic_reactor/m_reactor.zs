import mods.thaumcraft.Infusion;

Infusion.registerRecipe("magicreactor", "", <gregtech:machine:32004>, 4,
    [<aspect:potentia> * 125, <aspect:machina> * 100, <aspect:praecantatio>*50], <gregtech:machine:986>,
    [<minecraft:beacon>, <ore:plateRedAlloy>, <thaumcraft:plank_greatwood>, <ore:circuitMv>, <gregtech:meta_item_1:202>, <ore:circuitMv>, <thaumcraft:plank_greatwood>]);

Infusion.registerRecipe("magicreactor1", "", <gregtech:machine:32005>, 8,
    [<aspect:potentia> * 175, <aspect:machina> * 135, <aspect:praecantatio>*75], <gregtech:machine:987>,
    [<minecraft:beacon>, <thaumcraft:vis_generator>, <ore:plateThaumium>, <ore:circuitHv>, <gregtech:meta_item_1:203>, <ore:circuitHv>, <ore:plateThaumium>]);

Infusion.registerRecipe("magicreactor2", "", <gregtech:machine:32006>, 12,
    [<aspect:potentia> * 225, <aspect:machina> * 170, <aspect:praecantatio>*100, <aspect:caeles>*10], <gregtech:machine:988>,
    [<minecraft:beacon>, <thaumicaugmentation:impetus_generator>, <ore:plateVoid>, <ore:circuitEv>, <gregtech:meta_item_1:204>, <ore:circuitEv>, <ore:plateVoid>]);

recipes.addShaped(<contenttweaker:thaumium_casing> * 2, [[<ore:plateThaumium>, <ore:gtceHardHammers>, <ore:plateThaumium>],[<ore:plateThaumium>, <ore:frameGtThaumium>, <ore:plateThaumium>], [<ore:plateThaumium>, <ore:gtceWrenches>, <ore:plateThaumium>]]);
recipes.addShaped(<contenttweaker:void_casing> * 2, [[<ore:plateVoid>, <ore:gtceHardHammers>, <ore:plateVoid>],[<ore:plateVoid>, <ore:frameGtVoid>, <ore:plateVoid>], [<ore:plateVoid>, <ore:gtceWrenches>, <ore:plateVoid>]]);


