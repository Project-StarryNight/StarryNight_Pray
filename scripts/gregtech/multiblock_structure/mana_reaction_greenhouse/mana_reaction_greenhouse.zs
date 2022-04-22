/*
 * ZenScript by wuxinfashi
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为Mana翻译温室结构内容
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

global greenhouse as RecipeMap = FactoryRecipeMap.start("greenhouse")
    .maxInputs(6)
    .maxOutputs(6)
    .maxFluidInputs(3)
    .maxFluidOutputs(3)
    .build();

val id = 32003;
val loc = "greenhouse";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("###AAA###", "###BBB###", "#########", "#########", "#########")
            .aisle("##ACCCA##", "##B###B##", "###BBB###", "#########", "#########")
            .aisle("#ACCCCCA#", "#B#####B#", "##B###B##", "###BBB###", "#########")
            .aisle("ACCDDDCCA", "B#######B", "#B#####B#", "##B###B##", "###BBB###")
            .aisle("ACCDEDCCA", "B#######B", "#B#####B#", "##B###B##", "###BGB###")
            .aisle("ACCDDDCCA", "B#######B", "#B#####B#", "##B###B##", "###BBB###")
            .aisle("#ACCCCCA#", "#B#####B#", "##B###B##", "###BBB###", "#########")
            .aisle("##ACCCA##", "##B###B##", "###BBB###", "#########", "#########")
            .aisle("###ASA###", "###BBB###", "#########", "#########", "#########")
            .where("S", controller.self())
            .where("A", CTPredicate.states(<metastate:gregtech:metal_casing:5>)
            | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setPreviewCount(3).setMinGlobalLimited(3)
            | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setPreviewCount(3).setMinGlobalLimited(3)
            | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setPreviewCount(1).setMinGlobalLimited(1)
            | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setPreviewCount(1).setMinGlobalLimited(1)
            | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setPreviewCount(1).setMinGlobalLimited(1)
            )
            .where("B", CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where("C", CTPredicate.states(<metastate:gregtech:meta_block_compressed_2010:1>))
            .where("D", CTPredicate.states(<metastate:botania:storage:1>))
            .where("E", CTPredicate.states(<metastate:botania:altgrass:2>))
            .where("G", CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).
                setMaxGlobalLimited(1).setPreviewCount(1))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(greenhouse)
    .withBaseTexture(<metastate:gregtech:metal_casing:5>)
    .buildAndRegister();