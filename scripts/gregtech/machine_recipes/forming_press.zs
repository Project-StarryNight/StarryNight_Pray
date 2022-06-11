/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技冲压机床内容
*/

import mods.gregtech.recipe.RecipeMap;

//硬碳合金
forming_press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:501>*4,<ore:plateDiamond>,<ore:plateTungstenCarbide>,<ore:ingotBlueSteel>])
    .outputs(<gregtech:meta_ingot:32031>)
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

//水晶矩阵
recipes.remove(<avaritia:resource:1>);
forming_press.recipeBuilder()
    .inputs([<ore:ingotCrystallineAlloy>,<avaritia:resource>*4,<ore:plateDoubleTitaniumAluminide>*2])
    .outputs(<gregtech:meta_ingot:32024>)
    .duration(100)
    .EUt(7680)
    .buildAndRegister();