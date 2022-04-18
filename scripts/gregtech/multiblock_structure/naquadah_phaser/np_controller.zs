/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为魔力硅岩反应堆控制器配方内容
*/

import mods.gregtech.recipe.RecipeMap;

//控制器配方
assembly_line.recipeBuilder()
    .inputs([
        <gregtech:machine:992>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <ore:circuitZpm>,
        <gregtech:meta_item_1:208>,
        <ore:plateDoubleStellarAlloy>,
        <gregtech:meta_item_1:606> * 64,
        <draconicevolution:draconic_core> * 2
    ])
    .fluidInputs(<liquid:soldering_alloy> * 1152, <liquid:naquadah_enriched> * 543)
    .outputs(<gregtech:machine:32001>)
    .duration(1200)
    .EUt(131072)
    .buildAndRegister();
