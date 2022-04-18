/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技大气收集器内容
*/

import mods.gregtech.recipe.RecipeMap;

gas_collector.recipeBuilder()
    .circuit(4)
    .fluidOutputs(<liquid:gsp_055_rs_air> * 10000)
    .EUt(384)
    .duration(200)
    .property("dimension", 1001)
    .buildAndRegister();
