/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为魔力硅岩反应堆配方内容
*/

import crafttweaker.liquid.ILiquidStack;

//定义冷却剂
var coolAnts as ILiquidStack[] = [
    <liquid:water> * 34000,
    <liquid:ice> * 8500,
    <liquid:cryotheum> * 250,
    <liquid:water> * 137500,
    <liquid:ice> * 34000,
    <liquid:cryotheum> * 1000
];
//定义概率
var chances as int[] = [
    2500,
    3750,
    5000,
    5000,
    7500,
    10000
];

//循环添加
for i in 0 to 3 {
    mnreactor.recipeBuilder()
        .fluidInputs([<liquid:enriched_naquadah_fuel> * 1, <liquid:uranium_hexafluoride> * 5, coolAnts[i], <liquid:liquid_magic_polymer> * 250])
        .chancedOutput(<thermalfoundation:material:1028> * 1, chances[i], 0)
        .fluidOutputs(<liquid:depleted_uranium_hexafluoride> * 5)
        .EUt(-136000)
        .duration(20)
        .buildAndRegister();

    mnreactor.recipeBuilder()
        .fluidInputs([<liquid:hyper_naquadah_fuel> * 1, <liquid:uranium_hexafluoride> * 20, coolAnts[i+3], <liquid:liquid_magic_polymer> * 1000])
        .chancedOutput(<thermalfoundation:material:1028> * 6, chances[i+3], 0)
        .fluidOutputs(<liquid:depleted_uranium_hexafluoride> * 20)
        .EUt(-550000)
        .duration(20)
        .buildAndRegister();
}
