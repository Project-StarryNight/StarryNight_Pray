/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技合金炉内容
*/

import mods.gregtech.recipe.RecipeMap;

//模块化合金_基础合成
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:ingotSteel>,
        <ore:ingotConductiveIron>
    ])
    .outputs(<modularmachinery:itemmodularium> * 2)
    .duration(400)
    .EUt(16)
    .buildAndRegister();
