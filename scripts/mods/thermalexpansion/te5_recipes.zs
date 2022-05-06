/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为热力膨胀内容
*/

import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemDefinition;

//移除配方
#定义数组
var items as IItemStack[] = [
    <thermalexpansion:machine:1>,#磨粉机
    <thermalexpansion:augment:273>,#磨粉机升级
    <thermalexpansion:machine:3>,#感应炉
    <thermalexpansion:augment:303>,#感应炉升级
    <thermalexpansion:augment:304>,#感应炉升级
    <thermalexpansion:machine>,#红石炉
    <thermalexpansion:augment:256>,#红石炉升级
    <thermalexpansion:augment:257>,#红石炉升级
    <thermalexpansion:augment:258>,#红石炉升级
    <thermalexpansion:augment:704>,#弱化能源炉
    <thermalexpansion:augment:720>,#通货能源炉
    <thermalfoundation:material:167>,#TE5 末影锭及材料
    <thermalfoundation:material:295>,
    <thermalfoundation:material:231>,
    <thermalfoundation:material:103> * 4,
    <thermalfoundation:material:357>,#信素板
    <thermalfoundation:material:359>,#末影板
    <thermalfoundation:storage_alloy:5>,#信素锭
    <thermalfoundation:storage_alloy:7>,#末影锭
    <thermalfoundation:material:229>,
    <thermalfoundation:material:293>,
    <thermalfoundation:material:165>,
    <thermalfoundation:material:101>
];

#循环移除
for i, item in items {
    var item = items[i];
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}

//信素粉
mixer.recipeBuilder()
    .inputs([
        <ore:dustCopper> * 3,
        <ore:dustSilver>
    ])
    .fluidInputs(<liquid:redstone> * 1000)
    .outputs(<gregtech:meta_dust:32099> * 4)
    .EUt(256)
    .duration(80)
    .buildAndRegister();

//末影粉
mixer.recipeBuilder()
    .inputs([
        <ore:dustEnderAlloyAdvanced> * 4,
        <ore:dustPlatinum> * 2,
        <ore:itemEnderCrystalPowder> * 2,
        <ore:dustEnderEye> * 2,
        <deepmoblearning:pristine_matter_enderman> * 1
    ])
    .fluidInputs(<liquid:liquid_magic_polymer> * 1000)
    .outputs(<gregtech:meta_dust:32100> * 10)
    .EUt(1536)
    .duration(80)
    .buildAndRegister();

//信素_谐振转换套件
recipes.addShaped(<thermalfoundation:upgrade:2>, [
    [null, <ore:ingotSignalum>, null],
    [<ore:ingotSignalum>, <ore:gearElectrum>, <ore:ingotSignalum>],
    [<ore:itemVibrantPowder>, <ore:ingotSignalum>, <ore:itemVibrantPowder>]
]);
recipes.addShaped(<thermalfoundation:upgrade:3>, [
    [null, <ore:ingotEnderium>, null],
    [<ore:ingotEnderium>, <ore:gearLumium>, <ore:ingotEnderium>],
    [<ore:itemPulsatingPowder>, <ore:ingotEnderium>, <ore:itemPulsatingPowder>]
]);

//四元素棒数组
var rodElements as IItemStack[] = [
    <minecraft:blaze_rod>,
    <thermalfoundation:material:2048>,
    <thermalfoundation:material:2050>,
    <thermalfoundation:material:2052>
];
//四元素粉数组
var dustElements as IItemStack[] = [
    <minecraft:blaze_powder>,
    <thermalfoundation:material:2049>,
    <thermalfoundation:material:2051>,
    <thermalfoundation:material:2053>
];
//热力四元素流体数组
var liquidElements as ILiquidStack[] = [
    <liquid:pyrotheum> * 250,
    <liquid:cryotheum> * 250,
    <liquid:aerotheum> * 250,
    <liquid:petrotheum> * 250
];
//循环添加元素粉提取配方
for i, liquidElement in liquidElements {
    var liquidElement = liquidElements[i];
extractor.recipeBuilder()
    .inputs(<thermalfoundation:material>.definition.makeStack(1024 + i))
    .fluidOutputs(liquidElement)
    .duration(100)
    .EUt(32)
    .buildAndRegister();
}
//循环添加魔力转元素粉配方
for i, liquidElement in liquidElements {
chemical_reactor.recipeBuilder()
    .inputs([
        <ore:dustRedstone> * 1
    ])
    .fluidInputs(<liquid:liquid_magic_polymer> * 250)
    .circuit(i+1)
    .outputs(<thermalfoundation:material>.definition.makeStack(1024 + i))
    .duration(80)
    .EUt(192)
    .buildAndRegister();
}
//循环添加棒磨粉配方
for i, rodElement in rodElements {
macerator.recipeBuilder()
    .inputs(rodElement)
    .outputs(dustElements[i] * 4)
    .chancedOutput(dustElements[i] * 1, 5000, 2500)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
}

//元始魔力
extractor.recipeBuilder()
    .inputs([
        <ore:dustMana>
    ])
    .fluidOutputs(<liquid:mana> * 250)
    .duration(100)
    .EUt(256)
    .buildAndRegister();
