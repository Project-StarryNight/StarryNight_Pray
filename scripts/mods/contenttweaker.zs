/*
 * ZenScript by Hikari_Nova & shang_jun_ & Duantui
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为Contenttweaker自定义物品内容
*/

#priority 500
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val dragon_cell = VanillaFactory.createItem("dragon_cell");
dragon_cell.maxStackSize = 64;
dragon_cell.creativeTab = <creativetab:misc>;
dragon_cell.register(); 