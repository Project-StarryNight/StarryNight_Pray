/*
 * ZenScript by Hikari_Nova & MCKLt
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为巫术配方内容
*/

import mods.gregtech.recipe.RecipeMap;

mixer.recipeBuilder()
    .inputs([
        <witchery:snowbell_seeds> * 1,
        <witchery:artichoke_seeds> * 1,
        <witchery:mandrake_seeds> * 1,
        <witchery:belladonna_seeds> * 1
    ])
    .fluidInputs(<liquid:canolaoil> * 500)
    .outputs(<witchery:anointing_paste> * 1)
    .EUt(128)
    .duration(200)
    .buildAndRegister();
