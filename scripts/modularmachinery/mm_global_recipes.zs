/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为模块化机械配方内容
*/

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;

//删除原配方
recipes.removeByMod("modularmachinery");

//定义模块化合金变量
var modularium as IItemStack = <modularmachinery:itemmodularium>;

//定义 GT 能源仓数组
var gtEnergyHatchs as IItemStack[] = [
    <gregtech:machine:1211>,
    <gregtech:machine:1212>,
    <gregtech:machine:1213>,
    <gregtech:machine:1214>,
    <gregtech:machine:1240>,
    <gregtech:machine:1241>,
    <gregtech:machine:1242>,
    <gregtech:machine:1243>,
    <gregtech:machine:1226>,
    <gregtech:machine:1227>,
    <gregtech:machine:1228>,
    <gregtech:machine:1229>,
    <gregtech:machine:1250>,
    <gregtech:machine:1251>,
    <gregtech:machine:1252>,
    <gregtech:machine:1253>
];

//定义 GT 线缆数组
var gtCables as IItemStack[] = [
    <gregtech:cable_single:112>,
    <gregtech:cable_single:25>,
    <gregtech:cable_single:100>,
    <gregtech:cable_single:2>,
    <gregtech:cable_single:80>,
    <gregtech:cable_double:295>,
    <gregtech:cable_single:124>,
    <gregtech:cable_single:2042>
];

//定义物品输入输出仓数组
var mmItemBuses as IItemStack[] = [
    <modularmachinery:blockinputbus>,
    <modularmachinery:blockinputbus:1>,
    <modularmachinery:blockinputbus:2>,
    <modularmachinery:blockinputbus:3> * 2,
    <modularmachinery:blockinputbus:4> * 2,
    <modularmachinery:blockinputbus:5> * 2,
    <modularmachinery:blockoutputbus>,
    <modularmachinery:blockoutputbus:1>,
    <modularmachinery:blockoutputbus:2>,
    <modularmachinery:blockoutputbus:3> * 2,
    <modularmachinery:blockoutputbus:4> * 2,
    <modularmachinery:blockoutputbus:5> * 2,
];

//定义GT电路板数组
var gtCircuits as IOreDictEntry[] = [
    <ore:circuitLv>,
    <ore:circuitMv>,
    <ore:circuitHv>,
    <ore:circuitEv>,
    <ore:circuitIv>,
    <ore:circuitLuv>,
    <ore:circuitZpm>,
    <ore:circuitUv>
];

//定义循环变量
var i = 0;
//循环添加输入输出仓配方，对应数组物品，能量仓,流体仓直接在循环内获取对应物品子ID
while (i < 8) {
    var gtOutPutEnergyHatch = gtEnergyHatchs[i];
    var gtInputEnergyHatch = gtEnergyHatchs[i + 7];
    var gtCable = gtCables[i];
    var gtCircuit = gtCircuits[i];
    #能量输出仓
    recipes.addShaped(<modularmachinery:blockenergyoutputhatch>.definition.makeStack(i), [
    [null, modularium, null],
    [gtCable, gtOutPutEnergyHatch, gtCable],
    [null, modularium, null]]);

    #能量输入仓
    recipes.addShaped(<modularmachinery:blockenergyinputhatch>.definition.makeStack(i), [
    [null, modularium, null],
    [gtCable, gtInputEnergyHatch, gtCable],
    [null, modularium, null]]);

    #流体输入仓
    recipes.addShaped(<modularmachinery:blockfluidinputhatch>.definition.makeStack(i), [
    [modularium, gtCircuit, modularium],
    [<gregtech:meta_item_1>.definition.makeStack(142 + i), <gregtech:hermetic_casing>.definition.makeStack(i), <gregtech:meta_item_1>.definition.makeStack(142 + i)],
    [modularium, gtCircuit, modularium]]);

    #流体输出仓
    recipes.addShaped(<modularmachinery:blockfluidoutputhatch>.definition.makeStack(i),[
    [modularium, <gregtech:meta_item_1>.definition.makeStack(142 + i), modularium],
    [gtCircuit, <gregtech:hermetic_casing>.definition.makeStack(i), gtCircuit],
    [modularium, <gregtech:meta_item_1>.definition.makeStack(142 + i), modularium]]);

    i += 1;
}

//重置循环变量
i = 0;
//循环添加输入输出仓配方，不包括超级物品输入输出仓，对应数组物品，GT输入输出总线直接在循环内获取对应物品子ID
while (i < 6) {
    var mmInputBus = mmItemBuses[i];
    var mmOutputBus = mmItemBuses[i + 5];
    #物品输入仓
    recipes.addShaped(mmInputBus,[
    [null, modularium, null],
    [modularium, <gregtech:machine>.definition.makeStack(1150 + i), modularium],
    [null, modularium, null]]);

    #物品输出仓
    recipes.addShaped(mmOutputBus,[
    [null, modularium, null],
    [modularium, <gregtech:machine>.definition.makeStack(1165 + i), modularium],
    [null, modularium, null]]);
    i += 1;
}

//额外添加超级物品输入输出仓配方
recipes.addShaped(<modularmachinery:blockinputbus:6> * 2,[
    [null, modularium, null],
    [modularium, <gregtech:machine>.definition.makeStack(1157), modularium],
    [null, modularium, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:6> * 2,[
    [null, modularium, null],
    [modularium, <gregtech:machine>.definition.makeStack(1172), modularium],
    [null, modularium, null]]);
