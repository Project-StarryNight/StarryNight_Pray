/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为实用扩展流体部分内容
*/

import mods.gregtech.recipe.RecipeMap;

//菜籽油
<recipemap:extractor>.recipeBuilder()
    .inputs([
        <ore:seedCanola> * 1
    ])
    .fluidOutputs(<liquid:canolaoil> * 50)
    .EUt(32)
    .duration(40)
    .buildAndRegister();

<recipemap:extractor>.recipeBuilder()
    .inputs([
        <ore:cropCanola> * 1
    ])
    .fluidOutputs(<liquid:canolaoil> * 200)
    .EUt(32)
    .duration(60)
    .buildAndRegister();

//精致菜籽油
<recipemap:fermenter>.recipeBuilder()
    .inputs([
        <ore:seedCanola> * 8
    ])
    .fluidInputs(<liquid:canolaoil> * 10000)
    .EUt(64)
    .fluidOutputs(<liquid:refinedcanolaoil> * 10000)
    .duration(100)
    .buildAndRegister();

//晶化油
<recipemap:mixer>.recipeBuilder()
    .inputs([
        <actuallyadditions:item_misc:23>
    ])
    .fluidInputs(<liquid:refinedcanolaoil> * 1000, <liquid:oil> * 1000)
    .fluidOutputs(<liquid:crystaloil> * 2000)
    .EUt(96)
    .duration(20)
    .buildAndRegister();

//充能油
<recipemap:mixer>.recipeBuilder()
    .inputs([
        <actuallyadditions:item_misc:24>
    ])
    .fluidInputs(<liquid:crystaloil> * 1000, <liquid:astralsorcery.liquidstarlight> * 100)
    .fluidOutputs(<liquid:empoweredoil> * 1500)
    .EUt(128)
    .duration(30)
    .buildAndRegister();
