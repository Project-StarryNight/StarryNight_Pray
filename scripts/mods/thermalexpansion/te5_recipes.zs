/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为热力膨胀内容
*/

import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;
import crafttweaker.item.IItemStack;

//移除配方
#定义数组
var items as IItemStack[] = [
    <thermalexpansion:machine:1>,#磨粉机
    <thermalexpansion:augment:273>,#磨粉机升级
    <thermalexpansion:machine:3>,#感应炉
    <thermalexpansion:augment:303>,#感应炉升级
    <thermalexpansion:augment:304>,#感应炉升级
    <thermalexpansion:machine>,#红石炉
    <thermalexpansion:augment:256>,#红石炉升级
    <thermalexpansion:augment:257>,#红石炉升级
    <thermalexpansion:augment:258>,#红石炉升级
    <thermalfoundation:material:167>,#TE5 末影锭及材料
    <thermalfoundation:material:295>,
    <thermalfoundation:material:231>,
    <thermalfoundation:material:103> * 4

];

#循环移除
for i, item in items {
    var item = items[i];
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}

//末影粉
recipes.remove(<thermalfoundation:material:103> * 4);
mixer.recipeBuilder()
    .inputs([
        <ore:dustEnderAlloyAdvanced> * 4,
        <ore:dustPlatinum> * 2,
        <ore:itemEnderCrystalPowder> * 2,
        <ore:dustEnderEye> * 2,
        <deepmoblearning:pristine_matter_enderman> * 1
    ])
    .fluidInputs(<liquid:liquid_magic_polymer> * 1000)
    .outputs(<gregtech:meta_dust:32100> * 8)
    .EUt(1536)
    .duration(80)
    .buildAndRegister();
