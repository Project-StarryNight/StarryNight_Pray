/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为魔力硅岩反应堆控制器配方内容
*/

import mods.gregtech.recipe.RecipeMap;

<recipemap:assembly_line>.recipeBuilder()
    .inputs([
        <gregtech:machine:992>,
        <ore:circuitUltimate>,
        <ore:circuitUltimate>,
        <ore:circuitUltimate>,
        <gregtech:fusion_casing:2> * 3,
        <gregtech:meta_item_1:208> * 2,
        <thaumcraft:primordial_pearl>,
        <ore:plateDoubleEnrichedNaquadahTriniumEuropiumDuranide> * 2,
        <ore:plateDoubleUranium235> * 2
    ])
    .fluidInputs(<liquid:soldering_alloy> * 3456, <liquid:plutonium> * 1440)
    .outputs(<modularcontroller:magic_naquadah_reactor_controller>)
    .EUt(90000)
    .duration(900)
    .buildAndRegister();
