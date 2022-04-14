/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技提取机内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

//原种子油移除
<recipemap:extractor>.findRecipe(2, [<minecraft:pumpkin_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:beetroot_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:melon_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:wheat_seeds:0>], null).remove();

//种子油添加
extractor.recipeBuilder()
    .inputs([
        <ore:listAllseed>
    ])
    .fluidOutputs(<liquid:seed_oil> * 50)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

//热力四元素粉数组
var dustElements as IOreDictEntry[] = [
    <ore:dustPyrotheum>,
    <ore:dustCryotheum>,
    <ore:dustAerotheum>,
    <ore:dustPetrotheum>
];
//热力四元素流体数组
var liquidElements as ILiquidStack[] = [
    <liquid:pyrotheum> * 250,
    <liquid:cryotheum> * 250,
    <liquid:aerotheum> * 250,
    <liquid:petrotheum> * 250
];
//循环添加提取配方
for i, dustElement in dustElements {
    var liquidElement = liquidElements[i];
extractor.recipeBuilder()
    .inputs([
        dustElement
    ])
    .fluidOutputs(liquidElement)
    .duration(200)
    .EUt(32)
    .buildAndRegister();
}

//元始魔力
extractor.recipeBuilder()
    .inputs([
        <ore:dustMana>
    ])
    .fluidOutputs(<liquid:mana> * 250)
    .duration(100)
    .EUt(256)
    .buildAndRegister();
