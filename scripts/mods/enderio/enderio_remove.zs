/*
 * ZenScript by Hikari_Nova & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为末影接口移除物品内容
*/

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

# 仅隐藏 JEI
var jeiItems as IItemStack[] = [
    <enderio:item_alloy_ingot:*>,#末影接口合金
    <enderio:item_alloy_endergy_ingot:*>,
    <enderio:item_material:3>,
    <enderio:item_material:21>,#末影接口矿粉
    <enderio:item_material:23>,
    <enderio:item_material:24>,
    <enderio:item_material:25>,
    <enderio:item_material:26>,
    <enderio:item_material:27>,
    <enderio:item_material:29>,
    <enderio:item_material:30>,
    <enderio:item_material:31>,
    <enderio:item_material:32>,
    <enderio:item_material:33>,
    <enderio:item_material:46>,
    <enderio:item_material:47>,
    <enderio:item_material:48>,
    <enderio:item_material:49>,
    <enderio:item_material:50>,
    <enderio:item_material:66>,
    <enderio:item_material:72>,
    <enderio:item_material:74>,
    <enderio:item_endergy_conduit>,
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit:2>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_endergy_conduit:5>,
    <enderio:item_endergy_conduit:7>

];

for i, item in jeiItems {
    JEI.removeAndHide(item,true);
}

//隐藏 JEI 并删除配方

var items as IItemStack[] = [
    <enderio:block_simple_alloy_smelter>,#合金炉
    <enderio:block_alloy_smelter>,
    <enderio:block_enhanced_alloy_smelter>,#SAG磨粉机
    <enderio:block_simple_sag_mill>,
    <enderio:block_sag_mill>,
    <enderio:block_enhanced_sag_mill>,
    <enderio:item_material:38>,#光伏粉
    <enderio:item_alloy_ball:*>,#磨珠
    <enderio:item_material:57>,
    <enderio:item_material:58>,
    <enderio:item_material:59>,
    <enderio:item_alloy_endergy_ball:*>,
    <enderio:item_alloy_nugget:*>,#合金粒&块
    <enderio:block_alloy:*>,
    <enderio:item_alloy_endergy_nugget:*>,
    <enderio:block_alloy_endergy:*>,
    <enderio:block_wired_charger>,//有线充电器
    <enderio:block_enhanced_wired_charger>,
    <enderio:item_capacitor_silver>,//电容*3
    <enderio:item_capacitor_energetic_silver>,
    <enderio:item_capacitor_vivid>,
    <enderio:item_material:65>,
    <enderio:block_wireless_charger>

];

for i, item in items {
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}

//移除 EnderCore 自带配方
recipes.removeShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>], [null, <minecraft:iron_ingot>, null]]);
recipes.removeShaped(<minecraft:chest> * 4, [[<ore:logWood>, <ore:logWood>, <ore:logWood>],[<ore:logWood>, null, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.removeShaped(<minecraft:stick> * 16, [[null, <minecraft:log>, null],[null, <minecraft:log>, null], [null, null, null]]);
