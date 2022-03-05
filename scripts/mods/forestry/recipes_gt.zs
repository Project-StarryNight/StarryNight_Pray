/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为林业内容
*/

import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;

//电子板
#移除
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>.withTag({T: 0 as short}));
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>.withTag({T: 1 as short}));
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>.withTag({T: 2 as short}));
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}));
#添加
#小型
<recipemap:laser_engraver>.recipeBuilder()
    .inputs([
        <ore:plateTin> * 2
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets>.withTag({T: 0 as short}))
    .EUt(32)
    .duration(80)
    .buildAndRegister();
#中型
<recipemap:laser_engraver>.recipeBuilder()
    .inputs([
        <ore:plateBronze> * 4
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets:1>.withTag({T: 1 as short}))
    .EUt(64)
    .duration(160)
    .buildAndRegister();
#大型
<recipemap:laser_engraver>.recipeBuilder()
    .inputs([
        <ore:plateNickel> * 4
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets:2>.withTag({T: 2 as short}))
    .EUt(128)
    .duration(160)
    .buildAndRegister();
#先进
<recipemap:laser_engraver>.recipeBuilder()
    .inputs([
        <ore:plateElectrum> * 2
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets:3>.withTag({T: 3 as short}))
    .EUt(256)
    .duration(240)
    .buildAndRegister();

//便携式多用分析仪
#移除
mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
#添加
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <gregtech:meta_item_1:218>,
        <gregtech:meta_item_1:233>,
        <ore:circuitGood> * 2,
        <ore:batteryGood>,
        <ore:plateTin> * 2
    ])
    .outputs(<forestry:portable_alyzer>)
    .EUt(64)
    .duration(160)
    .buildAndRegister();

