/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为神秘时代修复内容
*/

import mods.thaumcraft.Crucible;

Crucible.removeRecipe(<minecraft:web>);

Crucible.registerRecipe("web", "", <minecraft:web>, <minecraft:string>, [<aspect:vinculum> * 2, <aspect:bestia> * 5]);
