/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为末影接口内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

///移除配方

//定义数组
var items as IIngredient[] = [
    <enderio:item_material:22>,
    <enderio:item_item_conduit>,
    <enderio:item_liquid_conduit:*>,
    <enderio:item_redstone_conduit>,
    <enderio:item_material:0>,
    <enderio:item_material:15>,#脉冲水晶
    <enderio:item_material:14>,#充能水晶
    <enderio:item_power_conduit:*>,
    <enderio:item_endergy_conduit:*>
];

//循环移除
for i, item in items {
    recipes.remove(item);
}

//导管粘合剂胚料
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:sand> * 2,<ore:gravel> * 2,<ore:clay> * 2])
    .fluidInputs(<liquid:concrete> * 576)
    .outputs(<enderio:item_material:22> * 8)
    .EUt(30)
    .duration(200)
    .buildAndRegister();

recipes.addShaped(<enderio:item_material:22> * 2,[
    [<ore:gravel>,<ore:clay>,<ore:gravel>],
    [<ore:sand>,<ore:gravel>,<ore:sand>],
    [<ore:gravel>,<ore:clay>,<ore:gravel>]]);

//物品导管
recipes.addShapedMirrored(<enderio:item_item_conduit> * 2,[
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],
    [<ore:nuggetPulsatingIron>,<ore:wireFineBorosilicateGlass>,<ore:nuggetPulsatingIron>],
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

//流体导管
recipes.addShapedMirrored(<enderio:item_liquid_conduit:0> * 8,[
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],
    [<ore:blockGlassHardened>,<gregtech:fluid_pipe_tiny:260>,<ore:blockGlassHardened>],
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

//高压流体导管
recipes.addShapedMirrored(<enderio:item_liquid_conduit:1> * 8,[
    [<enderio:item_liquid_conduit:0>,<gregtech:fluid_pipe_tiny:2037>,<enderio:item_liquid_conduit:0>],
    [<ore:blockGlassHardened>,<gregtech:meta_item_1:142>,<ore:blockGlassHardened>],
    [<enderio:item_liquid_conduit:0>,<gregtech:fluid_pipe_tiny:2037>,<enderio:item_liquid_conduit:0>]]);

//末影流体导管
<recipemap:assembler>.recipeBuilder()
    .inputs([<ore:nuggetPulsatingIron> * 8,
        <enderio:item_liquid_conduit:1> * 4,
        <gregtech:meta_item_1:143>,
        <gregtech:fluid_pipe_normal:1012>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 72)
    .outputs(<enderio:item_liquid_conduit:2> *  4)
    .EUt(120)
    .duration(120)
    .buildAndRegister();

//石英玻璃
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs(<ore:blockQuartz>)
    .outputs(<enderio:block_fused_quartz>)
    .notConsumable(<gregtech:meta_item_1:18>)
    .EUt(16)
    .duration(160)
    .buildAndRegister();

//红石导管
recipes.addShaped(<enderio:item_redstone_conduit> * 8,[
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],
    [<ore:wireGtSingleRedAlloy>,<ore:wireGtSingleRedAlloy>,<ore:wireGtSingleRedAlloy>],
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

//简易机械框架
recipes.addShapedMirrored(<enderio:item_material:0>,[
    [<minecraft:iron_bars>,<enderio:item_material:20>,<minecraft:iron_bars>],
    [<enderio:item_material:20>,<gregtech:machine_casing:0>,<enderio:item_material:20>],
    [<minecraft:iron_bars>,<enderio:item_material:20>,<minecraft:iron_bars>]]);

//红石合金
<ore:ingotRedstoneAlloy>.add(<gregtech:meta_ingot:2517>);
//脉冲水晶
<recipemap:assembler>.recipeBuilder()
    .inputs([<ore:nuggetVibrantAlloy> * 4, <ore:gemFlawlessEmerald>])
    .outputs(<enderio:item_material:15> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 16)
    .duration(300)
    .EUt(480)
    .buildAndRegister();

<recipemap:macerator>.recipeBuilder()
    .inputs(<enderio:item_material:15>)
    .outputs(<enderio:item_material:35>)
    .duration(5)
    .EUt(120)
    .buildAndRegister();
//充能水晶
<recipemap:assembler>.recipeBuilder()
    .inputs([<ore:nuggetPulsatingIron> * 4, <ore:gemFlawlessDiamond>])
    .outputs(<enderio:item_material:14> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 16)
    .duration(300)
    .EUt(120)
    .buildAndRegister();

<recipemap:macerator>.recipeBuilder()
    .inputs(<enderio:item_material:14>)
    .outputs(<enderio:item_material:34>)
    .duration(5)
    .EUt(120)
    .buildAndRegister();
//充能铁锭
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs([<ore:ingotIron>,<ore:dustEnderPearl>])
    .outputs(<gregtech:meta_ingot:32004>)
    .EUt(16)
    .duration(30)
    .buildAndRegister();

<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustIron>,<ore:dustEnderPearl>])
    .outputs(<gregtech:meta_dust:32004>)
    .EUt(16)
    .duration(17)
    .buildAndRegister();

//导电铁锭
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustIron>,<ore:dustSilicon>,<ore:dustRedstone>])
    .outputs(<gregtech:meta_dust:32008> * 2)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

//充能合金
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustRedAlloy> * 2,<ore:dustGold> * 2])
    .outputs(<gregtech:meta_dust:32006> * 4)
    .fluidInputs([<liquid:glowstone> * 576])
    .duration(320)
    .EUt(120)
    .buildAndRegister();


//脉冲合金
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustEnergeticAlloy>,<ore:dustPulsatingIron>,<ore:dustEnderEye> * 2])
    .outputs(<gregtech:meta_dust:32005> * 4)
    .circuit(1)
    .duration(70)
    .EUt(480)
    .buildAndRegister();

<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustEnergeticAlloy> * 2,<ore:dustPulsatingIron> * 2,<ore:dustEnderEye> * 2])
    .outputs(<gregtech:meta_dust:32005> * 8)
    .circuit(2)
    .fluidInputs([<liquid:titanium_tetrachloride> * 1000])
    .duration(120)
    .EUt(480)
    .buildAndRegister();

//玄钢
<recipemap:alloy_smelter>.recipeBuilder()
    .inputs([<ore:ingotSteel>,<ore:obsidian>])
    .outputs(<gregtech:meta_ingot:32009>)
    .duration(210)
    .EUt(120)
    .buildAndRegister();

<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustSteel>,<ore:dustObsidian>])
    .outputs(<gregtech:meta_dust:32009>)
    .duration(180)
    .EUt(120)
    .buildAndRegister();
//末地钢
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustDarkSteel> * 2,<ore:dustEndstone> * 2])
    .fluidInputs([<liquid:helium> * 240])
    .outputs(<gregtech:meta_dust:32010> * 2)
    .duration(60)
    .EUt(1920)
    .buildAndRegister();


//晶化合金
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustEndSteel> * 2,<ore:itemVibrantPowder>])
    .outputs(<gregtech:meta_dust:32012> * 2)
    .circuit(1)
    .fluidInputs([<liquid:deuterium> * 1000])
    .duration(30)
    .EUt(7680)
    .buildAndRegister();

<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustEndSteel> * 4,<ore:itemVibrantPowder>])
    .outputs(<gregtech:meta_dust:32012> * 4)
    .circuit(2)
    .fluidInputs([<liquid:tritium> * 1000])
    .duration(45)
    .EUt(7680)
    .buildAndRegister();
//旋律合金
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustEndSteel> * 4,<ore:itemPulsatingPowder> * 2,<ore:dustIndium>])
    .outputs(<gregtech:meta_dust:32013> * 4)
    .fluidInputs([<liquid:radon> * 400])
    .duration(100)
    .EUt(30720)
    .buildAndRegister();

//恒星合金
<recipemap:mixer>.recipeBuilder()
    .inputs([<ore:dustNaquadah>,<ore:dustNetherStar>,<ore:dustMelodicAlloy>,<ore:dustCrystallineAlloy>])
    .fluidInputs([<liquid:palladium> * 144])
    .outputs(<gregtech:meta_dust:32014> * 4)
    .duration(100)
    .EUt(122880)
    .buildAndRegister();

//定义导管材料数组
var cableMaterials as string[]= [
    "PulsatingIron",
    "ConductiveIron",
    "EnergeticAlloy",
    "VibrantAlloy",
    "EndSteel",
    "CrystallineAlloy",
    "MelodicAlloy",
    "StellarAlloy"
];
//定义导管数组
var conduits as IItemStack[]= [
    <enderio:item_endergy_conduit:9>,
    <enderio:item_power_conduit:0>,
    <enderio:item_power_conduit:1>,
    <enderio:item_power_conduit:2>,
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:8>,
    <enderio:item_endergy_conduit:10>,
    <enderio:item_endergy_conduit:11>
];

//能量导管
for i in 0 to 8 {
    var name = cableMaterials[i];
    var cable1x = oreDict["wireGtSingle"~name].firstItem;
    var cable2x = oreDict["wireGtDouble"~name].firstItem;
    var conduit = conduits[i];
    recipes.addShaped(conduit,[
        [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],
        [cable1x,cable2x,cable1x],
        [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

}