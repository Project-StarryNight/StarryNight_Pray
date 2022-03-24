/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为无尽贪婪配方内容
*/

import mods.avaritia.ExtremeCrafting;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

var items as IItemStack[] = [
    <avaritia:resource:5>,
    <avaritia:resource:6>,
    <avaritia:neutron_collector>,
    <avaritia:neutronium_compressor>
];

for i in items{
    ExtremeCrafting.remove(i);
}

JEI.removeAndHide(<avaritia:neutron_collector>,true);
JEI.removeAndHide(<avaritia:neutronium_compressor>,true);
