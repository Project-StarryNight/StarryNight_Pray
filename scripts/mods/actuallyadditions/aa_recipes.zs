/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为实用扩展内容
*/

import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;

//晶化油菜种子
mixer.recipeBuilder()
    .inputs([
        <ore:seedCanola> * 32,
        <enderio:block_infinity_fog> * 1,
        <thaumcraft:crystal_essence> * 1
    ])
    .outputs(<actuallyadditions:item_misc:23> * 32)
    .EUt(48)
    .duration(20)
    .buildAndRegister();

//充能油菜种子
mixer.recipeBuilder()
    .inputs([
        <actuallyadditions:item_misc:23> * 16,
        <ore:powderMana> * 1,
    ])
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 150)
    .outputs(<actuallyadditions:item_misc:24> * 16)
    .EUt(64)
    .duration(30)
    .buildAndRegister();

//移除自带配方
recipes.removeShaped(<minecraft:paper> * 3, [[<actuallyadditions:item_food:16>, null, null],[null, <actuallyadditions:item_food:16>, null], [null, null, <actuallyadditions:item_food:16>]]);
