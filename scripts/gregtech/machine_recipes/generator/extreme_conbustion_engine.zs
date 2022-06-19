/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为极限燃烧引擎配方内容
*/

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

//定义燃料
var fuels as ILiquidStack[] = [
    <liquid:rp_1_hybrid_rocket_fuel>,
    <liquid:dense_hydrazine_hybrid_rocket_fuel>,
    <liquid:purple_rocket_fuel>,
    <liquid:green_rocket_fuel>,
];

//定义助燃剂消耗
var promotors as int[] = [
    100,
    200,
    450,
    800
];

//定义燃值
var values as int[] = [
    1536000,
    3072000,
    6144000,
    12288000
];

//定义活塞
var pistons as IItemStack[] =[
    <metaitem:electric.piston.ev>,
    <metaitem:electric.piston.iv>,
    <metaitem:electric.piston.luv>,
    <metaitem:electric.piston.zpm>,
    <metaitem:electric.piston.uv>
];
for i in 0 .. 4 {
    var fuel = fuels[i];
    var promotor = promotors[i];
    var value = values[i];
    var EUt as int = 2048;
    for j in 0 .. 5{
        var piston = pistons[j];
        ecengine.recipeBuilder()
            .notConsumable(piston*16)
            .circuit(1)
            .fluidInputs([fuel*6000,<liquid:combustion_promotor>*(promotor*6)])
            .EUt(EUt*-4)
            .duration(value/EUt)
            .buildAndRegister();
        ecengine.recipeBuilder()
            .notConsumable(piston*4)
            .circuit(0)
            .fluidInputs([fuel*1000,<liquid:combustion_promotor>*promotor])
            .EUt(EUt*-1)
            .duration(value/EUt)
            .buildAndRegister();
        EUt = EUt *4;
    }
}