/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技压缩机内容
*/

import mods.gregtech.recipe.RecipeMap;

//压缩石头粉
compressor.recipeBuilder()
    .inputs([<ore:dustStone>*32])
    .outputs(<gregtech:meta_dust:32036>)
    .EUt(120)
    .duration(900)
    .buildAndRegister();

//钻石晶格
recipes.remove(<avaritia:resource>);
compressor.recipeBuilder()
    .inputs([<ore:stickCrystaltine>*4])
    .outputs(<avaritia:resource>)
    .EUt(1920)
    .duration(200)
    .buildAndRegister();