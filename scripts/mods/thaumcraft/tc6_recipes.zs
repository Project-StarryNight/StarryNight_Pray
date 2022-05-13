/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为神秘时代配方内容
*/

import crafttweaker.item.IItemStack;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;

//水银合成
furnace.addRecipe(<thaumcraft:quicksilver>, <gregtech:meta_gem:268>, 0.0);

Crucible.registerRecipe("prismarine_shard", "", <minecraft:prismarine_shard>, <ore:gemNetherQuartz>, 
    [<aspect:aqua>*5, <aspect:terra>*5]);
