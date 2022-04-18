/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为实用扩展流体部分内容
*/

import mods.gregtech.recipe.RecipeMap;

//菜籽油
extractor.recipeBuilder()
    .inputs([
        <ore:seedCanola> * 1
    ])
    .fluidOutputs(<liquid:canolaoil> * 40)
    .EUt(3)
    .duration(60)
    .buildAndRegister();

extractor.recipeBuilder()
    .inputs([
        <ore:cropCanola> * 1
    ])
    .fluidOutputs(<liquid:canolaoil> * 80)
    .EUt(6)
    .duration(60)
    .buildAndRegister();

//精致菜籽油
brewery.recipeBuilder()
    .inputs([
        <ore:seedCanola> * 1
    ])
    .fluidInputs(<liquid:canolaoil> * 1000)
    .EUt(48)
    .fluidOutputs(<liquid:refinedcanolaoil> * 1000)
    .duration(100)
    .buildAndRegister();

//晶化油
mixer.recipeBuilder()
    .inputs([
        <actuallyadditions:item_misc:23>
    ])
    .fluidInputs(<liquid:refinedcanolaoil> * 1000)
    .fluidOutputs(<liquid:crystaloil> * 1000)
    .EUt(64)
    .duration(20)
    .buildAndRegister();

//充能油
mixer.recipeBuilder()
    .inputs([
        <actuallyadditions:item_misc:24>
    ])
    .fluidInputs(<liquid:crystaloil> * 1400, <liquid:liquid_magic_polymer> * 100)
    .fluidOutputs(<liquid:empoweredoil> * 1500)
    .EUt(128)
    .duration(30)
    .buildAndRegister();
