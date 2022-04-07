/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技高压釜内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

//定义数组
var autoclaveGems as string[] = [
    "Lapis",
    "Quartzite",
    "Cinnabar",
    "Monazite",
    "Apatite",
    "Sodalite",
    "Lazurite"
];

//数组循环添加配方_高压釜
for input in autoclaveGems {
    //粉 --> 宝石
    var dust as IItemStack = oreDict["dust"~input].firstItem;
    var gem as IItemStack = oreDict["gem"~input].firstItem;

    autoclave.recipeBuilder()
        .inputs(dust * 1)
        .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
        .outputs(gem * 1)
        .duration(100)
        .EUt(8)
        .buildAndRegister();
}
//补充循环配方
#石英岩
autoclave.recipeBuilder()
    .inputs(<ore:dustSiliconDioxide> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
    .outputs(<gregtech:meta_gem:340> * 1)
    .duration(100)
    .EUt(8)
    .buildAndRegister();

#琼脂粉
autoclave.recipeBuilder()
    .inputs(<ore:dustGelatin> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 40])
    .outputs(<gregtech:meta_dust:1608> * 1)
    .duration(100)
    .EUt(80)
    .buildAndRegister();
#下界石英
autoclave.recipeBuilder()
    .inputs(<ore:dustNetherQuartz> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
    .outputs(<minecraft:quartz> * 1)
    .duration(100)
    .EUt(8)
    .buildAndRegister();
#赛特斯石英
autoclave.recipeBuilder()
    .inputs(<ore:dustCertusQuartz> * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 10])
    .outputs(<gregtech:meta_gem:214> * 1)
    .duration(100)
    .EUt(8)
    .buildAndRegister();
//补充循环配方(三废岩磨制): 定义数组
var stones as string[] = [
    "Granite",
    "Diorite",
    "Andesite"
];

//数组循环添加配方_高压釜
for input in stones {
    var stone as IItemStack = oreDict["stone"~input].firstItem;
    var stonePolished as IItemStack = oreDict["stone"~input~"Polished"].firstItem;

    autoclave.recipeBuilder()
    .inputs(stone * 1)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 4])
    .outputs(stonePolished * 1)
    .duration(20)
    .EUt(4)
    .buildAndRegister();
}

##############################
# 高压釜配方补充
##############################
//能量水晶
autoclave.recipeBuilder()
    .inputs(<gregtech:meta_item_1:491> * 9)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 200])
    .outputs(<gregtech:meta_item_1:741> * 1)
    .duration(200)
    .EUt(256)
    .buildAndRegister();

//兰波顿
autoclave.recipeBuilder()
    .inputs(<ore:dustLapotron> * 15)
    .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 350])
    .outputs(<gregtech:meta_gem:1647> * 1)
    .duration(300)
    .EUt(256)
    .buildAndRegister();
