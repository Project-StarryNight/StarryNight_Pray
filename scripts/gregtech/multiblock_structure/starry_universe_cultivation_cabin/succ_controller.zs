/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为星空宇宙培育仓控制器配方内容
*/

import mods.gregtech.recipe.RecipeMap;

//控制器配方
assembly_line.recipeBuilder()
    .inputs([
        <gregtech:hermetic_casing:6>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <gregtech:meta_item_1:208>,
        <ore:plateDoubleStellarAlloy>,
        <thaumcraft:void_seed> * 32,
        <draconicevolution:draconic_core> * 2,
        <draconicevolution:dragon_heart>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 1152, <liquid:dragon_breath_solution> * 32000)
    .outputs(<gregtech:machine:32002>)
    .duration(2400)
    .EUt(262144)
    .buildAndRegister();
