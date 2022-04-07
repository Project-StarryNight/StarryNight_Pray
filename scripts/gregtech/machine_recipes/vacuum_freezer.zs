/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技电冰箱内容
*/

import mods.gregtech.recipe.RecipeMap;

//液态 GS-055RS 空气
vacuum_freezer.recipeBuilder()
    .fluidInputs(<liquid:gsp_055_rs_air> * 4000)
    .fluidOutputs(<liquid:liquid_gsp_055_rs_air> * 4000)
    .EUt(4096)
    .duration(80)
    .buildAndRegister();
