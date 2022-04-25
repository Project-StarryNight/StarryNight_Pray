/*
 * ZenScript by MCKLt & KilaBash
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
import crafttweaker.block.IBlockState;

var block1s as IBlockState[] = [
<metastate:thaumcraft:plank_greatwood>,
<metastate:contenttweaker:thaumium_casing>,
<metastate:contenttweaker:void_casing>
];

var block2s as IBlockState[] = [
<metastate:minecraft:glass>,
<metastate:thaumicaugmentation:fortified_glass>,
<metastate:thaumicaugmentation:fortified_glass>
];

var block3s as IBlockState[] = [
<metastate:thaumcraft:everfull_urn>,
<metastate:thaumcraft:metal_alchemical>,
<metastate:thaumcraft:metal_alchemical_advanced>
];

var block4s as IBlockState[] = [
<metastate:thaumcraft:plank_greatwood>,
<metastate:thaumcraft:metal_thaumium>,
<metastate:contenttweaker:void_casing>
];

for i in 0 to 3 {
var block1 = block1s[i];
var block2 = block2s[i];
var block3 = block3s[i];
var block4 = block4s[i];

FactoryRecipeMap.start("magicreactor" + i)
    .maxInputs(1)
    .maxOutputs(1)
    .build();

val id = 32004 + i;
val loc = "magicreactor" + i;

Builder.start(loc, id)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("AAA", "ABA", "AAA")
            .aisle("AAA", "BCB", "AAA")
            .aisle("ASA", "ABA", "AAA")
            .where("S", controller.self())
            .where("A", CTPredicate.states(block1)
            | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            | CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(2).setMaxGlobalLimited(1).setPreviewCount(1)
            | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
            | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1))
            .where("B", CTPredicate.states(block2))
            .where("C", CTPredicate.states(block3))
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(RecipeMap.getByName("magicreactor" + i))
    .withBaseTexture(block4)
    .buildAndRegister();
    }
