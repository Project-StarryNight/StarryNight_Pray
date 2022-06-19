/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为极限燃烧引擎控制器配方内容
*/

import mods.gregtech.recipe.RecipeMap;

assembler.recipeBuilder()
    .inputs([<gregtech:machine:1008>*8,<gregtech:meta_item_1:206>*4,<ore:springTungsten>*16])
    .outputs(<gregtech:machine:32007>)
    .duration(1200)
    .EUt(1920)
    .buildAndRegister();