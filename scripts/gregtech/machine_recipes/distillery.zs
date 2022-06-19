/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技蒸馏室内容
*/

//RP-1燃料
distillery.recipeBuilder()
    .fluidInputs(<liquid:kerosene>* 100)
    .fluidOutputs(<liquid:rp_1_fuel>*75)
    .circuit(23)
    .EUt(120)
    .duration(40)
    .buildAndRegister();

//煤焦蒸馏
distillery.recipeBuilder()
    .fluidInputs(<liquid:diesel>* 500)
    .fluidOutputs(<liquid:kerosene>* 300)
    .circuit(23)
    .EUt(60)
    .duration(36)
    .buildAndRegister();
