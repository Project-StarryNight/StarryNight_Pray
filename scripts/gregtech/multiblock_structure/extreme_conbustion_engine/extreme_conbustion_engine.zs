/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为极限燃烧引擎结构内容
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

global ecengine as RecipeMap = FactoryRecipeMap.start("extreme_conbustion_engine")
    .maxInputs(2)
    .maxFluidInputs(2)
    .build();

val extreme_conbustion_engine = Builder.start("extreme_conbustion_engine",32007)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start()
                          .aisle("HHHHH","HAAAH","HAOAH","HAAAH","HHHHH")
                          .aisle("EEEEE","ETTTE","ETPTE","ETTTE","EEEEE")
                          .aisle("BEEEB","G###G","G#P#G","G###G","BEEEB")
                          .aisle("BEEEB","G###G","G#P#G","G###G","BEEEB")
                          .aisle("BEEEB","G###G","G#P#G","G###G","BEEEB")
                          .aisle("BEEEB","GTTTG","GTPTG","GTTTG","BEMEB")
                          .aisle("BEEEB","G###G","G#P#G","G###G","BEEEB")
                          .aisle("BEEEB","G###G","G#P#G","G###G","BEEEB")
                          .aisle("BEEEB","G###G","G#P#G","G###G","BEEEB")
                          .aisle("EEEEE","ETTTE","ETPTE","ETTTE","EEEEE")
                          .aisle("AAAAA","AKKKA","AKCKA","AKKKA","AAAAA")
                          .where("#", CTPredicate.getAir())
                          .where('C', controller.self())
                          .where('G', CTPredicate.states(<metastate:gregtech:transparent_casing>))
                          .where('A', CTPredicate.states(<metastate:gregtech:multiblock_casing:1>))
                          .where('H', CTPredicate.states(<metastate:gcym:unique_casing:3>))
                          .where('P', CTPredicate.states(<metastate:gregtech:boiler_casing:3>))
                          .where('T', CTPredicate.states(<metastate:gregtech:turbine_casing:4>))
                          .where('B', CTPredicate.states(<metastate:gregtech:boiler_firebox_casing:3>).setMinGlobalLimited(10)
                          | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(2).setPreviewCount(2))
                          .where('E', CTPredicate.states(<metastate:contenttweaker:extreme_casing>))
                          .where('M', CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1))
                          .where('O', CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1))
                          .where('K', CTPredicate.states(<metastate:gcym:unique_casing:3>).setMinGlobalLimited(4)
                          | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                          | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1))
                          .build();
                 } as IPatternBuilderFunction)
    .withRecipeMap(ecengine)
    .withBaseTexture(<metastate:contenttweaker:extreme_casing>)
    .buildAndRegister();

extreme_conbustion_engine.hasMufflerMechanics = true;
extreme_conbustion_engine.hasMaintenanceMechanics = true;