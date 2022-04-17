#priority 901

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

global starry_universe_cultivation_cabin as RecipeMap = FactoryRecipeMap.start("npcontroller")
        .minInputs(1)
        .minOutputs(1)
        .minFluidInputs(1)
        .minFluidOutputs(1)
        .build();

val id = 32002;
val loc = "starry_universe_cultivation_cabin";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("##AAA##", "##BJB##", "##BJB##", "##DDD##")
            .aisle("#AHHHA#", "#B###B#", "#B###B#", "#HAAAH#")
            .aisle("AHHHHHA", "B#####B", "B#####B", "FAIIIAE")
            .aisle("AHHHHHA", "J#####J", "J#####J", "FAIIIAE")
            .aisle("AHHHHHA", "B#####B", "B#####B", "FAIIIAE")
            .aisle("#AHHHA#", "#B###B#", "#B###B#", "#HAAAH#")
            .aisle("##AAA##", "##BCB##", "##BAB##", "##GGG##")
            .where("C", controller.self())
            .where("B", CTPredicate.states(<metastate:gregtech:transparent_casing:1>))
            .where("D", CTPredicate.states(<metastate:appliedenergistics2:fluix_stairs:2>))
            .where("E", CTPredicate.states(<metastate:appliedenergistics2:fluix_stairs:1>))
            .where("F", CTPredicate.states(<metastate:appliedenergistics2:fluix_stairs:0>))
            .where("A", CTPredicate.states(<metastate:gregtech:turbine_casing:8>).setMinGlobalLimited(20) | controller.autoAbilities())
            .where("G", CTPredicate.states(<metastate:appliedenergistics2:fluix_stairs:3>))
            .where("H", CTPredicate.states(<metastate:appliedenergistics2:fluix_slab>))
            .where("I", CTPredicate.states(<metastate:thaumicaugmentation:starfield_glass>))
            .where("J", CTPredicate.states(<metastate:gregtech:fusion_casing:3>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(starry_universe_cultivation_cabin)
    .withBaseTexture(<metastate:gregtech:turbine_casing:8>)
    .buildAndRegister();