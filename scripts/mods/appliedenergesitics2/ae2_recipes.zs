/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为应用能源配方内容
*/

//硅
furnace.addRecipe(<appliedenergistics2:material:5>, <gregtech:meta_dust:339>, 0.1F);

//陨石粉
macerator.recipeBuilder()
    .inputs([
        <appliedenergistics2:sky_stone_block> * 1
    ])
    .outputs([
        <appliedenergistics2:material:45> * 1
    ])
    .duration(200)
    .EUt(32)
    .buildAndRegister();

//福鲁伊克斯粉
macerator.recipeBuilder()
    .inputs([
        <ore:crystalFluix> * 1
    ])
    .outputs([
        <appliedenergistics2:material:8> * 1
    ])
    .duration(200)
    .EUt(6)
    .buildAndRegister();
