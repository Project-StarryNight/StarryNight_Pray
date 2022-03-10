/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为热力膨胀内容
*/

import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;
import crafttweaker.item.IIngredient;

//移除配方
#定义数组
var items as IIngredient[] = [
    <thermalexpansion:machine:1>,#磨粉机
    <thermalexpansion:augment:273>,#磨粉机升级
    <thermalexpansion:machine:3>,#感应炉
    <thermalexpansion:augment:303>,#感应炉升级
    <thermalexpansion:augment:304>,#感应炉升级
    <thermalexpansion:machine>,#红石炉
    <thermalexpansion:augment:256>,#红石炉升级
    <thermalexpansion:augment:257>,#红石炉升级
    <thermalexpansion:augment:258>#红石炉升级
];

#循环移除
for i, item in items {
    var item = items[i];
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}

