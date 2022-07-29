/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为末影接口内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

///移除配方

//定义数组
var items as IItemStack[] = [
    <enderio:item_material:22>,
    <enderio:item_item_conduit>,
    <enderio:item_liquid_conduit:*>,
    <enderio:item_redstone_conduit>,
    <enderio:item_material:0>,
    <enderio:item_material:15>,#脉冲水晶
    <enderio:item_material:14>,#充能水晶
    <enderio:item_power_conduit:*>,
    <enderio:item_endergy_conduit:*>,
    <enderio:item_material:51>,//涂料
    <enderio:item_material:52>,
    <enderio:item_material:67>,
    <enderio:item_material:55>,//离魂框架
    <enderio:block_powered_spawner>,//电动刷怪笼
    <enderio:block_slice_and_splice>,//头颅装配机
    <enderio:block_farm_station>,//种植站
    <enderio:block_soul_binder>,//灵魂绑定器
    <enderio:block_vat>,//酿液桶
    <enderio:block_enhanced_vat>,
    <enderio:block_normal_wireless_charger>,//无线充能天线
    <enderio:block_enhanced_wireless_charger>,
    <enderio:block_wireless_charger_extension>
];

//循环移除
for i, item in items {
    recipes.remove(item);
}

//导管粘合剂胚料
mixer.recipeBuilder()
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
    [<ore:blockGlassHardened>,<ore:pipeSmallFluidBronze>,<ore:blockGlassHardened>],
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]]);

//高压流体导管
recipes.addShapedMirrored(<enderio:item_liquid_conduit:1> * 8,[
    [<enderio:item_liquid_conduit:0>,<gregtech:fluid_pipe_tiny:2037>,<enderio:item_liquid_conduit:0>],
    [<ore:blockGlassHardened>,<gregtech:meta_item_1:142>,<ore:blockGlassHardened>],
    [<enderio:item_liquid_conduit:0>,<gregtech:fluid_pipe_tiny:2037>,<enderio:item_liquid_conduit:0>]]);

//末影流体导管
assembler.recipeBuilder()
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
alloy_smelter.recipeBuilder()
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
fluid_solidifier.recipeBuilder()
    .inputs(<ore:gemFlawlessEmerald>)
    .fluidInputs(<liquid:pulsating_iron> * 144)
    .outputs(<enderio:item_material:15>)
    .duration(430)
    .EUt(480)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:15>)
    .outputs(<enderio:item_material:35>)
    .duration(5)
    .EUt(120)
    .buildAndRegister();

//充能水晶
fluid_solidifier.recipeBuilder()
    .inputs(<ore:gemFlawlessDiamond>)
    .fluidInputs(<liquid:vibrant_alloy> * 144)
    .outputs(<enderio:item_material:14>)
    .duration(550)
    .EUt(120)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:14>)
    .outputs(<enderio:item_material:36>)
    .duration(5)
    .EUt(120)
    .buildAndRegister();

//末影水晶粉
macerator.recipeBuilder()
    .inputs(<ore:itemEnderCrystal>)
    .outputs(<enderio:item_material:37>)
    .duration(10)
    .EUt(120)
    .buildAndRegister();

//预知水晶粉
macerator.recipeBuilder()
    .inputs(<ore:itemPrecientCrystal>)
    .outputs(<enderio:item_material:34>)
    .duration(20)
    .EUt(480)
    .buildAndRegister();

//脉冲铁锭
alloy_smelter.recipeBuilder()
    .inputs(<ore:ingotIron>|<ore:dustIron>,<ore:dustEnderPearl>)
    .outputs(<gregtech:meta_ingot:32004>)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustIron>,<ore:dustEnderPearl>)
    .outputs(<gregtech:meta_dust:32004>)
    .duration(10)
    .EUt(16)
    .buildAndRegister();

//导电铁
alloy_smelter.recipeBuilder()
    .inputs(<ore:ingotIron>,<ore:crystalRedstone>)
    .outputs(<gregtech:meta_ingot:32008>)
    .duration(80)
    .EUt(16)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustIron>,<ore:crystalRedstone>)
    .outputs(<gregtech:meta_dust:32008>)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<ore:crystalRestonia>,<ore:gemQuartz>)
    .outputs(<thermalfoundation:material:893>)
    .duration(10)
    .EUt(16)
    .buildAndRegister();

//磁钢
alloy_smelter.recipeBuilder()
    .inputs(<ore:ingotVanadiumSteel>|<ore:dustVanadiumSteel>,<ore:dustSilicon>*2|<ore:ingotSilicon>*2)
    .outputs(<gregtech:meta_ingot:32011>)
    .duration(110)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustVanadiumSteel>,<ore:dustSilicon>*2)
    .outputs(<gregtech:meta_dust:32011>)
    .duration(45)
    .EUt(120)
    .buildAndRegister();

//充能合金
mixer.recipeBuilder()
    .inputs(<gregtech:meta_dust:301>*5,<ore:dustRedAlloy>)
    .fluidInputs(<liquid:glowstone>*576)
    .outputs(<gregtech:meta_dust:32006>*4)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

//脉冲合金
mixer.recipeBuilder()
    .inputs(<gregtech:meta_dust:32006>*2,<ore:dustEnderPearl>)
    .outputs(<gregtech:meta_dust:32005>*2)
    .duration(270)
    .EUt(120)
    .buildAndRegister();

//玄钢
alloy_smelter.recipeBuilder()
    .inputs(<ore:ingotSteel>|<ore:dustSteel>,<ore:obsidian>|<ore:dustObsidian>)
    .outputs(<gregtech:meta_ingot:32009>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustSteel>,<ore:dustObsidian>)
    .outputs(<gregtech:meta_dust:32009>)
    .duration(50)
    .EUt(120)
    .buildAndRegister();

//末地钢
alloy_smelter.recipeBuilder()
    .inputs(<ore:ingotDarkSteel>|<ore:dustDarkSteel>,<ore:endstone>|<ore:dustEndstone>)
    .outputs(<gregtech:meta_ingot:32010>)
    .duration(320)
    .EUt(480)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustDarkSteel>,<ore:dustEndstone>)
    .outputs(<gregtech:meta_dust:32006>)
    .duration(170)
    .EUt(120)
    .buildAndRegister();

//晶化合金
mixer.recipeBuilder()
    .inputs(<ore:dustCrystaltine>,<ore:dustEndSteel>*4,<ore:itemVibrantPowder>)
    .outputs(<gregtech:meta_dust:32012>*4)
    .fluidInputs(<liquid:uranium_235> * 144)
    .duration(900)
    .EUt(480)
    .buildAndRegister();

//紫颂果汁
extractor.recipeBuilder()
    .inputs(<minecraft:chorus_fruit_popped>* 4)
    .fluidOutputs(<liquid:chorus_juice> * 1000)
    .chancedOutput(<gregtech:meta_dust:416>, 2500, 1000)
    .duration(100)
    .EUt(480)
    .buildAndRegister();

//旋律合金
mixer.recipeBuilder()
    .inputs(<ore:dustCrystaltine>*12,<ore:dustRhodium>*3,<ore:dustNaquadahEnriched>*2,<ore:dustLanthanum>*6,<ore:dustIndium>)
    .outputs(<gregtech:meta_dust:32013>*12)
    .fluidInputs(<liquid:chorus_juice> * 4000,<liquid:enchanted_biomass_liquid> * 4000)
    .duration(1400)
    .EUt(30720)
    .buildAndRegister();

//恒星合金
mixer.recipeBuilder()
    .inputs(<contenttweaker:stellar_debris>,<ore:dustMelodicAlloy>*16,<ore:dustNaquadahAlloy>*6,<ore:dustEnderium>*3,<ore:dustEuropium>*2)
    .outputs(<gregtech:meta_dust:32014>*12)
    .fluidInputs(<liquid:neon> * 6000)
    .duration(1950)
    .EUt(122880)
    .buildAndRegister();

<contenttweaker:artificial_sun>.addTooltip("§c「难以驾驭的神之火」");
<contenttweaker:artificial_sun>.addTooltip("§c「熱かい悩む神の火」");
//液态灵魂
extractor.recipeBuilder()
    .inputs(<ore:soulSand>)
    .fluidOutputs(<liquid:liquid_spirit> * 250)
    .chancedOutput(<minecraft:sand>, 9001, 333)
    .duration(50)
    .EUt(120)
    .buildAndRegister();

//魂金
fluid_solidifier.recipeBuilder()
    .inputs(<ore:ingotRedSteel>)
    .fluidInputs(<liquid:liquid_spirit> * 1000)
    .outputs(<gregtech:meta_ingot:32007>)
    .duration(330)
    .EUt(480)
    .buildAndRegister();

//定义导管材料数组
var cableMaterials as string[]= [
    "PulsatingIron",
    "ConductiveIron",
    "EnergeticAlloy",
    "VibrantAlloy",
    "EndSteel",
    "CrystallineAlloy",
    "SignalumFluorescent",
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
    <enderio:item_endergy_conduit:4>,
    <enderio:item_endergy_conduit:10>,
    <enderio:item_endergy_conduit:11>
];

//能量导管
for i in 0 to 8 {
    var name = cableMaterials[i];
    var cable1x = oreDict["wireGtSingle"~name].firstItem;
    var cable2x = oreDict["wireGtDouble"~name].firstItem;
    var conduit = conduits[i];
    recipes.addShaped(conduit*4,[
        [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
        [cable1x, cable2x, cable1x],
        [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);

}

//工业涂料
mixer.recipeBuilder()
    .inputs([<ore:itemPulsatingPowder> * 2,<gregtech:meta_item_1:430> * 4,<gregtech:meta_item_1:429> * 4])
    .fluidInputs([<liquid:polytetrafluoroethylene> * 576])
    .outputs(<enderio:item_material:51> * 4)
    .duration(750)
    .EUt(480)
    .buildAndRegister();

//灵魂协调涂料
chemical_bath.recipeBuilder()
    .inputs(<enderio:item_material:51>)
    .fluidInputs([<liquid:liquid_spirit> * 1000])
    .outputs(<enderio:item_material:52>)
    .duration(430)
    .EUt(1920)
    .buildAndRegister();

//强化涂料
mixer.recipeBuilder()
    .inputs([<ore:itemVibrantPowder> * 2,<gregtech:meta_item_1:430> * 4,<gregtech:meta_item_1:428> * 4])
    .fluidInputs([<liquid:reinforced_epoxy_resin> * 576])
    .outputs(<enderio:item_material:67> * 2)
    .duration(1130)
    .EUt(1920)
    .buildAndRegister();

//工业机器框架
alloy_smelter.recipeBuilder()
    .inputs([<ore:frameGtElectricalSteel>,<enderio:item_material:51>])
    .outputs(<enderio:item_material:1>)
    .duration(670)
    .EUt(480)
    .buildAndRegister();

//灵魂机器框架
alloy_smelter.recipeBuilder()
    .inputs([<ore:frameGtDarkSteel>,<enderio:item_material:52>])
    .outputs(<enderio:item_material:53>)
    .duration(450)
    .EUt(1920)
    .buildAndRegister();

//强化机器框架
alloy_smelter.recipeBuilder()
    .inputs([<ore:frameGtEndSteel>,<enderio:item_material:67>])
    .outputs(<enderio:item_material:54>)
    .duration(900)
    .EUt(1920)
    .buildAndRegister();

//离魂机器框架
assembler.recipeBuilder()
    .inputs([<ore:itemEnhancedMachineChassi>, <ore:frameGtCrystallineAlloy>, <enderio:item_material:40> * 4,
            <enderio:item_material:41> * 4, <enderio:item_material:42> * 4, <enderio:item_material:44> * 4,
            <enderio:item_material:45> * 4, <enderio:item_material:56> * 4, <ore:plateEnderium> * 6])
    .fluidInputs([<liquid:polybenzimidazole> * 1728])
    .outputs(<enderio:item_material:55> * 2)
    .duration(1570)
    .EUt(7680)
    .buildAndRegister();

//电动刷怪笼
recipes.addShaped(<enderio:block_powered_spawner>,[
    [<ore:plateCrystallineAlloy>,<ore:itemSoulMachineChassi>,<ore:plateCrystallineAlloy>],
    [<ore:plateCrystallineAlloy>,<gregtech:meta_item_1:207>,<ore:plateCrystallineAlloy>],
    [<ore:circuitZpm>,<ore:itemUnsouledMachineChassi>,<ore:circuitZpm>]]);

//头颅装配机
recipes.addShaped(<enderio:block_slice_and_splice>,[
    [<ore:itemSkull>,<ore:toolHeadBuzzSawTungstenCarbide>,<ore:itemSkull>],
    [<ore:circuitIv>,<enderio:item_material:53>,<ore:circuitIv>],
    [<ore:plateSoularium>,<ore:blockSoularium>,<ore:plateSoularium>]]);

//种植站
recipes.addShaped(<enderio:block_farm_station>,[
    [<enderio:item_material:44>,<enderio:item_material:17>,<enderio:item_material:45>],
    [<ore:circuitIv>,<enderio:item_material:53>,<ore:circuitIv>],
    [<ore:plateSoularium>,<ore:blockSoularium>,<ore:plateSoularium>]]);

//灵魂绑定器
recipes.addShaped(<enderio:block_soul_binder>,[
    [<enderio:item_material:56>,<enderio:item_soul_vial>,<enderio:block_enderman_skull:2>],
    [<ore:circuitIv>,<enderio:item_material:53>,<ore:circuitIv>],
    [<ore:plateSoularium>,<ore:blockSoularium>,<ore:plateSoularium>]]);