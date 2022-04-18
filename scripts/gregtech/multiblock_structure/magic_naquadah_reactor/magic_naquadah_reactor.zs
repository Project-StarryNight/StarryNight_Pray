/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为魔力硅岩反应堆结构内容
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
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;

global mnreactor as RecipeMap = FactoryRecipeMap.start("mnreactor")
    .maxFluidInputs(4)
    .maxFluidOutputs(2)
    .maxOutputs(2)
    .build();

val id = 32000;
val loc = "mnreactor";

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("WFFFFFW", "FMMMMMF", "FHTHTHF", "FHMTMHF", "FHTHTHF", "FMMMMMF", "WFFFFFW")
            .aisle("FMZMZMF", "MPPPPPM", "H#####H", "H#####H", "H#####H", "MCCCCCM", "FMZMZMF")
            .aisle("FZZMZZF", "MPPPPPM", "T#####T", "T#####T", "T#####T", "MC###CM", "FZZMZZF")
            .aisle("FMMBMMF", "MPPPPPM", "H#####H", "M#####M", "H#####H", "MC###CM", "FMMMMMF")
            .aisle("FZZMZZF", "MPPPPPM", "T#####T", "T#####T", "T#####T", "MC###CM", "FZZMZZF")
            .aisle("FMZMZMF", "MPPPPPM", "H#####H", "H#####H", "H#####H", "MCCCCCM", "FMZMZMF")
            .aisle("WFFFFFW", "FMMMMMF", "FHTHTHF", "FHTSTHF", "FHTHTHF", "FMMMMMF", "WFFFFFW")
            .where("S", controller.self())
            .where("F", CTPredicate.states(<metastate:chisel:factory:6>))
            .where("Z", CTPredicate.states(<metastate:gregtech:machine_casing:7>))
            .where("M", CTPredicate.states(<metastate:gregtech:metal_casing:10>)
            | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(4).setPreviewCount(4)
            | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(2).setPreviewCount(2)
            | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
            )
            .where("W", CTPredicate.states(<metastate:gregtech:warning_sign:2>))
            .where("C", CTPredicate.states(<blockstate:gregtech:fusion_casing>))
            .where("P", CTPredicate.states(<blockstate:thermalfoundation:fluid_mana>))
            .where("T", CTPredicate.states(<metastate:gregtech:transparent_casing:1>))
            .where("H", CTPredicate.states(<metastate:gregtech:hermetic_casing:7>))
            .where("B", CTPredicate.states(<metastate:avaritia:block_resource:2>))
            .where("#", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(mnreactor)
    .withBaseTexture(<metastate:gregtech:metal_casing:10>)
    .buildAndRegister();
