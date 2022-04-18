/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技蒸馏塔内容
*/

import mods.gregtech.recipe.RecipeMap;

//充能石油_蒸馏塔分解
distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:enriched_oil> * 100)
    .fluidOutputs(<liquid:sulfuric_heavy_fuel> * 100, <liquid:sulfuric_light_fuel> * 150, <liquid:sulfuric_naphtha> * 25, <liquid:sulfuric_gas> * 75)
    .EUt(384)
    .duration(20)
    .buildAndRegister();
