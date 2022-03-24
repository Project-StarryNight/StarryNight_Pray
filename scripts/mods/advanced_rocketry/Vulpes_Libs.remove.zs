/*
 * ZenScript by Hikari_Nova & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为高级火箭前置移除物品内容
*/

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

//隐藏jei并移除配方
var items as IItemStack[] = [
    <libvulpes:productrod:1>,
    <libvulpes:productrod:4>,
    <libvulpes:productrod:6>,
    <libvulpes:productrod:7>,
    <libvulpes:productrod:10>
];

for i, item in items {
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}

//删除熔炉配方并隐藏jei
var furnaceitem as IItemStack[] = [
    <libvulpes:productingot:7>,
    <libvulpes:productingot:3>
];

for i, item in furnaceitem {
    furnace.remove(item);
    JEI.removeAndHide(item,true);
}

//隐藏jei

var jeiitems as IItemStack[] = [
    <libvulpes:productdust:7>,
    <libvulpes:productdust:3>,
    <libvulpes:productnugget:7>,
    <libvulpes:productnugget:3>,
    <libvulpes:productplate:7>,
    <libvulpes:productplate:3>,
    <libvulpes:productgear:7>
];

for i, item in jeiitems {
    JEI.removeAndHide(item,true);
}