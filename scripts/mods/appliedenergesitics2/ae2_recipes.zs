/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为应用能源配方内容
*/

//陨石粉
macerator.recipeBuilder()
    .inputs([
        <ore:blockSkyStone> * 1
    ])
    .outputs(<appliedenergistics2:material:45> * 1)
    .chancedOutput(<appliedenergistics2:material:45> * 1, 5000, 1000)
    .chancedOutput(<appliedenergistics2:material:45> * 1, 2500, 500)
    .duration(200)
    .EUt(64)
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
