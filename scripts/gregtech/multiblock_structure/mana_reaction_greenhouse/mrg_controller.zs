/*
 * ZenScript by wuxinfashi
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为Mana温室反应仪控制器配方内容
*/

import mods.gregtech.recipe.RecipeMap;

assembler.recipeBuilder()
    .inputs([<gregtech:machine:988>, <gregtech:meta_item_1:129>, 
        <gregtech:meta_item_1:189>, <ore:circuitHv>, <ore:foilManasteel>*16,
        <botania:rune:4>*2, <botania:rune:5>*2, <botania:rune:6>*2, <botania:rune:7>*2])
    .fluidInputs(<liquid:liquid_mana>*10000)
    .outputs(<gregtech:machine:32003>)
    .duration(2000)
    .EUt(256)
    .buildAndRegister();