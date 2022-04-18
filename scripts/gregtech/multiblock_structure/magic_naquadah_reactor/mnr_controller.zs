/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为魔力硅岩反应堆控制器配方内容
*/

import mods.gregtech.recipe.RecipeMap;

//控制器配方
assembly_line.recipeBuilder()
    .inputs([
        <gregtech:fusion_casing:1>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <gregtech:meta_item_1:208>,
        <gregtech:meta_item_1:208>,
        <ore:plateDoubleUranium235>,
        <gregtech:meta_item_1:606> * 64,
        <draconicevolution:wyvern_energy_core> * 2,
        <thaumcraft:primordial_pearl>,
        <thaumcraft:primordial_pearl>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 1152, <liquid:mana> * 32000)
    .outputs(<gregtech:machine:32000>)
    .duration(1600)
    .EUt(262144)
    .buildAndRegister();
