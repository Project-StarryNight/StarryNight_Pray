/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为林业内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import mods.forestry.Carpenter;

//电子板
# 移除
var items as IItemStack[] = [
    <forestry:chipsets>.withTag({T: 0 as short}),
    <forestry:chipsets:1>.withTag({T: 1 as short}),
    <forestry:chipsets:2>.withTag({T: 2 as short}),
    <forestry:chipsets:3>.withTag({T: 3 as short}),
    <forestry:portable_alyzer>#便携式多用分析仪
];
for i, item in items {
    var item = items[i];
    Carpenter.removeRecipe(item);
}
# 添加
# 小型
laser_engraver.recipeBuilder()
    .inputs([
        <ore:plateTin> * 2
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets>.withTag({T: 0 as short}))
    .EUt(32)
    .duration(80)
    .buildAndRegister();
# 中型
laser_engraver.recipeBuilder()
    .inputs([
        <ore:plateBronze> * 4
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets:1>.withTag({T: 1 as short}))
    .EUt(64)
    .duration(160)
    .buildAndRegister();
# 大型
laser_engraver.recipeBuilder()
    .inputs([
        <ore:plateNickel> * 4
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets:2>.withTag({T: 2 as short}))
    .EUt(128)
    .duration(160)
    .buildAndRegister();
# 先进
laser_engraver.recipeBuilder()
    .inputs([
        <ore:plateElectrum> * 2
    ])
    .notConsumable(<ore:lensRuby>)
    .outputs(<forestry:chipsets:3>.withTag({T: 3 as short}))
    .EUt(256)
    .duration(240)
    .buildAndRegister();

//便携式多用分析仪
# 添加
assembler.recipeBuilder()
    .inputs([
        <gregtech:meta_item_1:218>,
        <gregtech:meta_item_1:233>,
        <ore:circuitMv> * 2,
        <ore:batteryGood>,
        <ore:plateTin> * 2
    ])
    .outputs(<forestry:portable_alyzer>)
    .EUt(64)
    .duration(160)
    .buildAndRegister();

