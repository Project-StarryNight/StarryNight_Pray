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
extractor.findRecipe(2, [<minecraft:pumpkin_seeds:0>], null).remove();
extractor.findRecipe(2, [<minecraft:beetroot_seeds:0>], null).remove();
extractor.findRecipe(2, [<minecraft:melon_seeds:0>], null).remove();
extractor.findRecipe(2, [<minecraft:wheat_seeds:0>], null).remove();

//种子油添加
extractor.recipeBuilder()
    .inputs([
        <ore:listAllseed>
    ])
    .fluidOutputs(<liquid:seed_oil> * 50)
    .duration(50)
    .EUt(8)
    .buildAndRegister();
