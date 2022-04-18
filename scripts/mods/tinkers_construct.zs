/*
 * ZenScript by Hikari_Nova & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为匠魂内容
*/

//删除宇宙中子素融化配方
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:4>);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:3>);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:block_resource>);

//删除宇宙中子素浇筑配方
mods.tconstruct.Casting.removeTableRecipe(<avaritia:resource:4>);
mods.tconstruct.Casting.removeTableRecipe(<avaritia:resource:3>);
mods.tconstruct.Casting.removeBasinRecipe(<avaritia:block_resource>);