/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为龙之研究配方内容
*/

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

//移除龙锭熔炉配方
furnace.remove(<draconicevolution:draconium_ingot>);
furnace.remove(<gregtech:meta_ingot:32022>);

//移除龙尘矿物辞典
<ore:dustDraconium>.remove(<draconicevolution:draconium_dust>);

//循环隐藏jei
var jeiItems as IItemStack[] = [
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconic_ingot>,
    <draconicevolution:draconium_dust>,
    <draconicevolution:nugget:*>,
    <draconicevolution:draconium_block>,
    <draconicevolution:draconic_block>,
    <draconicevolution:draconium_ore:*>
];

for i, item in jeiItems {
    JEI.removeAndHide(item,true);
}