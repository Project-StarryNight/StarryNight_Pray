/*
 * ZenScript by Hikari_Nova & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为末影接口移除物品内容
*/

import crafttweaker.item.IItemStack;
import mods.jei.JEI;


#仅隐藏jei
var jeiItems as IItemStack[] = [
    <enderio:item_alloy_ingot:*>,#末影接口合金
    <enderio:item_alloy_endergy_ingot:*>,
    <enderio:item_material:21>,#末影接口矿粉
    <enderio:item_material:26>,
    <enderio:item_material:27>,
    <enderio:item_material:31>,
    <enderio:item_material:32>,
    <enderio:item_material:33>,
    <enderio:item_material:72>,
    <enderio:item_endergy_conduit>,
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit:2>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_endergy_conduit:4>,
    <enderio:item_endergy_conduit:5>,
    <enderio:item_endergy_conduit:7>

];

for i, item in jeiItems {
    JEI.removeAndHide(item,true);
}

//隐藏jei并删除配方

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
    <enderio:block_alloy_endergy:*>

];

for i, item in items {
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}