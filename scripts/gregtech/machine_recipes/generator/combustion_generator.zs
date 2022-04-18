/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技柴油发电机内容
*/

import mods.gregtech.recipe.RecipeMap;

//蕴魔硝化柴油
combustion_generator.recipeBuilder()
    .fluidInputs(<fluid:enchanted_nitro_diesel> * 2)
    .duration(90)
    .EUt(32)
    .buildAndRegister();

//充能石油
combustion_generator.recipeBuilder()
    .fluidInputs(<liquid:enriched_oil> * 2)
    .duration(30)
    .EUt(32)
    .buildAndRegister();

//精炼油
combustion_generator.recipeBuilder()
    .fluidInputs(<liquid:refined_fuel> * 2)
    .duration(25)
    .EUt(32)
    .buildAndRegister();
