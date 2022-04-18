/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为星辉魔法聚星缸内容
*/

import mods.astralsorcery.Lightwell;
import crafttweaker.item.IItemStack;

var gems as IItemStack[] = [
    <gregtech:meta_gem_exquisite:281>,
    <gregtech:meta_gem_exquisite:311>,
    <gregtech:meta_gem_exquisite:314>,
    <gregtech:meta_gem_exquisite:2006>,
    <gregtech:meta_gem_exquisite:276>,
    <gregtech:meta_gem_exquisite:278>
];

var shatterMultipers as int[] = [
    24,
    24,
    24,
    48,
    64,
    96
];

for i, gem in gems{
    var shatterMultiper = shatterMultipers[i];
    Lightwell.addLiquefaction(gem, <liquid:astralsorcery.liquidstarlight>, 1, shatterMultiper, 0);
}
