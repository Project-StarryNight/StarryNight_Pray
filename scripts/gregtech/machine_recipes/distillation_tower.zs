/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技蒸馏塔内容
*/

import mods.gregtech.recipe.RecipeMap;

//晶化油_蒸馏塔分解
<recipemap:distillation_tower>.recipeBuilder()
    .fluidInputs(<liquid:crystaloil> * 100)
    .fluidOutputs(<liquid:sulfuric_heavy_fuel> * 75, <liquid:sulfuric_light_fuel> * 100, <liquid:sulfuric_naphtha> * 25, <liquid:sulfuric_gas> * 50)
    .EUt(128)
    .duration(20)
    .buildAndRegister();

//充能油_蒸馏塔分解
<recipemap:distillation_tower>.recipeBuilder()
    .fluidInputs(<liquid:empoweredoil> * 100)
    .fluidOutputs(<liquid:sulfuric_heavy_fuel> * 100, <liquid:sulfuric_light_fuel> * 150, <liquid:sulfuric_naphtha> * 40, <liquid:sulfuric_gas> * 75)
    .EUt(384)
    .duration(20)
    .buildAndRegister();
