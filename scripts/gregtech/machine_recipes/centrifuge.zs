/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技离心机内容
*/

import mods.gregtech.recipe.RecipeMap;

<recipemap:centrifuge>.recipeBuilder()
    .inputs(<minecraft:skull:2> * 1)
    .chancedOutput(<thaumcraft:brain>, 5000, 1000)
    .fluidOutputs(<liquid:fermented_biomass> * 1000)
    .duration(120)
    .EUt(16)
    .buildAndRegister();
