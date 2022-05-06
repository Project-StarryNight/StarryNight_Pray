/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为应用能源配方内容
*/

//硅
furnace.remove(<appliedenergistics2:material:5>);
furnace.addRecipe(<appliedenergistics2:material:5>, <ore:dustNetherQuartz>, 0.1F);
furnace.addRecipe(<appliedenergistics2:material:5>, <ore:dustCertusQuartz>, 0.1F);
furnace.addRecipe(<appliedenergistics2:material:5>, <ore:dustSilicon>, 0.1F);

//陨石粉
macerator.recipeBuilder()
    .inputs([
        <appliedenergistics2:sky_stone_block> * 1
    ])
    .outputs([
        <appliedenergistics2:material:45> * 1
    ])
    .duration(200)
    .EUt(6)
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

//硅粉
# 下届石英电解
electrolyzer.recipeBuilder()
    .inputs([
        <ore:dustNetherQuartz> * 3
    ])
    .outputs([
        <gregtech:meta_dust:99>
    ])
    .fluidOutputs(<liquid:oxygen> * 2000)
    .EUt(30)
    .duration(60)
    .buildAndRegister();
# 赛特斯石英电解
electrolyzer.recipeBuilder()
    .inputs([
        <ore:dustCertusQuartz> * 3
    ])
    .outputs([
        <gregtech:meta_dust:99>
    ])
    .fluidOutputs(<liquid:oxygen> * 2000)
    .EUt(30)
    .duration(60)
    .buildAndRegister();
