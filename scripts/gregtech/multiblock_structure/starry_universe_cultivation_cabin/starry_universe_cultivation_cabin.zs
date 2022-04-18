/*
 * ZenScript by Hikari_Nova & MCKLt & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为星空宇宙培育仓结构内容
*/

#priority 900

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

global starry_universe_cultivation_cabin as RecipeMap = FactoryRecipeMap.start("succontroller")
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
            .aisle("##AAA##", "##BJB##", "##BJB##", "##HHH##")
            .aisle("#AHHHA#", "#B###B#", "#B###B#", "#HAAAH#")
            .aisle("AHHHHHA", "B#####B", "B#####B", "HAIIIAH")
            .aisle("AHHHHHA", "J#####J", "J#####J", "HAIIIAH")
            .aisle("AHHHHHA", "B#####B", "B#####B", "HAIIIAH")
            .aisle("#AHHHA#", "#B###B#", "#B###B#", "#HAAAH#")
            .aisle("##AAA##", "##BCB##", "##BAB##", "##HHH##")
            .where("C", controller.self())
            .where("B", CTPredicate.states(<metastate:gregtech:transparent_casing:1>))
            .where("A", CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>).setMinGlobalLimited(17) | controller.autoAbilities())
            .where("H", CTPredicate.states(<metastate:appliedenergistics2:fluix_slab>))
            .where("I", CTPredicate.states(<metastate:thaumicaugmentation:starfield_glass>))
            .where("J", CTPredicate.states(<metastate:gregtech:fusion_casing:3>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(starry_universe_cultivation_cabin)
    .withBaseTexture(<metastate:gcym:large_multiblock_casing:11>)
    .buildAndRegister();
