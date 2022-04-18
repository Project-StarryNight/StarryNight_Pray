/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为硅岩移相器结构内容
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

global npcontroller as RecipeMap = FactoryRecipeMap.start("npcontroller")
    .minInputs(0)
    .maxInputs(2)
    .maxFluidInputs(2)
    .maxFluidOutputs(1)
    .build();

val id = 32001;
val loc = "napcontroller";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("MMMMM", "BHTHB", "BWTWB", "BWTWB", "BWTWB", "BHTHB", "MMMMM")
            .aisle("MMMMM", "H###H", "W###W", "W###W", "W###W", "H###H", "MMMMM")
            .aisle("MMMMM", "T###T", "T###T", "T#R#T", "T###T", "T###T", "MMMMM")
            .aisle("MMMMM", "H###H", "W###W", "W###W", "W###W", "H###H", "MMMMM")
            .aisle("MMSMM", "BHTHB", "BWTWB", "BWTWB", "BWTWB", "BHTHB", "MMMMM")
            .where("S", controller.self())
            .where("B", CTPredicate.states(<blockstate:enderio:block_end_iron_bars>))
            .where("H", CTPredicate.states(<metastate:gregtech:hermetic_casing:6>))
            .where("R", CTPredicate.states(<metastate:avaritia:block_resource:2>))
            .where("T", CTPredicate.states(<metastate:gregtech:transparent_casing:1>))
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:7>).setMinGlobalLimited(40) | controller.autoAbilities())
            .where("W", CTPredicate.states(<metastate:gregtech:wire_coil:5>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(npcontroller)
    .withBaseTexture(<metastate:gregtech:metal_casing:7>)
    .buildAndRegister();
