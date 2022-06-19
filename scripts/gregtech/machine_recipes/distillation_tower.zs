/*
 * ZenScript by Hikari_Nova & shang_jun_
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

//煤焦油蒸馏
distillation_tower.findRecipe(120, null, [<liquid:coal_tar> * 1000]).remove();
distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:coal_tar>*1000)
    .fluidOutputs(<liquid:naphthalene>*400,<liquid:kerosene>*400,<liquid:hydrogen_sulfide>*300,<liquid:creosote>*200,<liquid:phenol>*100,<liquid:cyclopentadiene>*300)
    .outputs(<gregtech:meta_dust_small:319>)
    .EUt(120)
    .duration(80)
    .buildAndRegister();

//木焦油蒸馏
distillation_tower.findRecipe(256, null, [<liquid:wood_tar> * 1000]).remove();
distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:wood_tar>*1000)
    .fluidOutputs(<liquid:creosote>*300,<liquid:phenol>*75,<liquid:benzene>*350,<liquid:toluene>*75,<liquid:dimethylbenzene>*200,<liquid:cyclopentadiene>*40)
    .EUt(120)
    .duration(500)
    .buildAndRegister();

//二茂铁
distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:ferrocene_solution>*2000)
    .fluidOutputs(<liquid:ether>*1000)
    .outputs(<gregtech:meta_dust:32144>)
    .EUt(120)
    .duration(500)
    .buildAndRegister();

//二茂铁废水处理
distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:ferrocene_waste>*1000)
    .fluidOutputs(<liquid:water>*400,<liquid:diethylamine>*800,<liquid:ether>*500)
    .EUt(120)
    .duration(600)
    .buildAndRegister();
