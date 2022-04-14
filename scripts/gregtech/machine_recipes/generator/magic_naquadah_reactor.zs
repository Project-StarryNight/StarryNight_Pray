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
    <liquid:water> * 136000,
    <liquid:ice> * 34000,
    <liquid:cryotheum> * 250
];

//循环添加
for i, coolAnt in coolAnts {
    var advCoolAnt = coolAnts[i+3];
    mnreactor.recipeBuilder()
        .fluidInputs([<liquid:enriched_naquadah_fuel> * 1, <liquid:uranium_hexafluoride> * 1, coolAnt, <liquid:liquid_magic_polymer> * 10])
        .chancedOutput(<thermalfoundation:material:1028> * 1, 5000, 1000)
        .EUt(-136000)
        .duration(20)
        .buildAndRegister();

    mnreactor.recipeBuilder()
        .fluidInputs([<liquid:super_naquadah_fuel> * 1, <liquid:uranium_hexafluoride> * 5, advCoolAnt, <liquid:liquid_magic_polymer> * 40])
        .chancedOutput(<thermalfoundation:material:1028> * 6, 5000, 1000)
        .EUt(-550000)
        .duration(20)
        .buildAndRegister();
}
