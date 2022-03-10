/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为末影设备内容
*/

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

var items as IItemStack[] = [
    <enderutilities:void_pickaxe>,
    <enderutilities:icemelter>,
    <enderutilities:chairwand>,
    <enderutilities:dolly>,
    <enderutilities:machine_1:2>,
    <enderutilities:molecular_exciter>,
    <enderutilities:draw_bridge>,
    <enderutilities:draw_bridge:1>,
    <enderutilities:machine_0>
];

for i, item in items {
    var item = items[i];
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}
