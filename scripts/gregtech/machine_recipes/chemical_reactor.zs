/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技化学反应釜内容
*/

import mods.gregtech.recipe.RecipeMap;

//基岩精华
chemical_reactor.recipeBuilder()
    .inputs([<ore:compressed1xDustBedrock>*8])
    .outputs(<gregtech:meta_dust:32043>)
    .fluidInputs([<liquid:nitric_acid>*2000])
    .fluidOutputs([<liquid:sulfuric_nickel_solution>*2000])
    .EUt(30720)
    .duration(80)
    .buildAndRegister();
