/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为硅岩移相器控制器配方内容
*/

import mods.gregtech.recipe.RecipeMap;

<recipemap:assembly_line>.recipeBuilder()
    .inputs([
        <gregtech:machine:992>,
        <ore:circuitUltimate>,
        <ore:circuitUltimate>,
        <ore:circuitUltimate>,
        <ore:circuitUltimate>,
        <gregtech:fusion_casing:2>,
        <gregtech:meta_item_1:208> * 2,
        <gregtech:meta_item_1:606> * 16
    ])
    .fluidInputs(<liquid:soldering_alloy> * 4608, <liquid:naquadah_enriched> * 2304)
    .outputs(<modularcontroller:naquadah_phaser_controller>)
    .EUt(120000)
    .duration(1200)
    .buildAndRegister();
