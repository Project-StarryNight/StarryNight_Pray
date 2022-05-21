/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为自定义产线内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

//压缩石头粉
compressor.recipeBuilder()
    .inputs([<ore:dustStone>*32])
    .outputs(<gregtech:meta_dust:32036>)
    .EUt(120)
    .duration(900)
    .buildAndRegister();

//未知金属残渣粉
centrifuge.recipeBuilder()
    .inputs([<ore:dustCompactStone>*2])
    .outputs([<gregtech:meta_dust:417>*32,<gregtech:meta_dust:304>*14,<gregtech:meta_dust:376>*14,<gregtech:meta_dust:316>*8,<gregtech:meta_dust:2022>*4,<gregtech:meta_dust:32037>*1])
    .fluidInputs([<liquid:hydrofluoric_acid>*19200])
    .fluidOutputs([<liquid:depleted_uranium_hexafluoride>*3200])
    .EUt(1920)
    .duration(200)
    .buildAndRegister();

//魔力灌注残渣
chemical_bath.recipeBuilder() 
    .inputs([<ore:dustUnknownResidue>*6])
    .fluidInputs([<liquid:liquid_magic_polymer>*6000])
    .outputs([<gregtech:meta_dust:32038>*3])
    .EUt(7680)
    .duration(300)
    .buildAndRegister();

//山铜锭
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:dustManaInfusedResidue>*2,<ore:dustPyrotheum>*8])
    .fluidInputs([<liquid:rocket_fuel>*4000])
    .outputs([<gregtech:meta_ingot_hot:32039>*3,<gregtech:meta_dust:2522>*6])
    .EUt(7680)
    .duration(950)
    .property("temperature", 4000)
    .buildAndRegister();

//山铜粉
electrolyzer.recipeBuilder()
    .inputs(<ore:dustManaInfusedResidue>*3)
    .outputs(<gregtech:meta_dust:32039>*2)
    .EUt(30720)
    .duration(600)
    .buildAndRegister();

//基岩精华
chemical_reactor.recipeBuilder()
    .inputs([<ore:compressed1xDustBedrock>*8])
    .outputs(<gregtech:meta_dust:32043>)
    .fluidInputs([<liquid:nitric_acid>*2000])
    .fluidOutputs([<liquid:sulfuric_nickel_solution>*2000])
    .EUt(30720)
    .duration(80)
    .buildAndRegister();

//硼铁合金
alloy_smelter.recipeBuilder()
    .inputs([<ore:dustBoron>,<ore:dustIron>|<ore:ingotIron>])
    .outputs(<gregtech:meta_ingot:32028>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs([<ore:dustBoron>,<ore:dustIron>])
    .outputs(<gregtech:meta_dust:32028>)
    .duration(40)
    .EUt(120)
    .buildAndRegister();

//高强合金
mixer.recipeBuilder()
    .inputs([<ore:dustFerroboron>*2,<ore:dustSilicon>,<ore:dustChrome>,<ore:dustCarbon>,<ore:dustLithium>*4])
    .outputs([<gregtech:meta_dust:32029>*2])
    .duration(30)
    .EUt(1920)
    .buildAndRegister();

//硬碳合金
forming_press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:501>*4,<ore:plateDiamond>,<ore:plateTungstenCarbide>,<ore:ingotBlueSteel>])
    .outputs(<gregtech:meta_ingot:32031>)
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

//极限合金
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:ingotToughAlloy>,<ore:ingotHardCarbonAlloy>])
    .fluidInputs([<liquid:deuterium>*2000])
    .outputs([<gregtech:meta_ingot:32040>*2])
    .EUt(7680)
    .duration(500)
    .property("temperature", 5100)
    .buildAndRegister();

//热引合金
mixer.recipeBuilder()
    .inputs([<ore:dustToughAlloy>*6,<ore:dustTantalumCarbide>*4,<ore:dustMolybdenumDisilicide>*9,<ore:dustCaesium>*9])
    .outputs([<gregtech:meta_dust:32041>*6])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();

//基岩合金
mixer.recipeBuilder()
    .inputs([<ore:dustExtremeAlloy>*7,<ore:dustOrichalcum>*3,<ore:dustBedrockEssence>*1,<ore:dustTrinium>*2,<ore:dustEuropium>*1])
    .outputs([<gregtech:meta_dust:32042>*10])
    .duration(450)
    .EUt(30720)
    .buildAndRegister();

//晶素锭
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:blockEnderAlloyAdvanced>,<ore:gemExquisiteDiamond>*2,<ore:gemNetherStar>])
    .fluidInputs([<liquid:argon>*2000])
    .outputs([<gregtech:meta_ingot_hot:32025>*2])
    .EUt(480)
    .duration(3000)
    .property("temperature", 5000)
    .buildAndRegister();

//水晶矩阵
recipes.remove(<avaritia:resource>);
recipes.remove(<avaritia:resource:1>);
compressor.recipeBuilder()
    .inputs([<ore:stickCrystaltine>*4])
    .outputs(<avaritia:resource>)
    .EUt(1920)
    .duration(200)
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs([<ore:ingotCrystallineAlloy>,<avaritia:resource>*4,<ore:plateDoubleTitaniumAluminide>*2])
    .outputs(<gregtech:meta_ingot:32024>)
    .duration(100)
    .EUt(7680)
    .buildAndRegister();

//炽焰流明
chemical_bath.recipeBuilder()
    .inputs(<ore:dustLumium>)
    .fluidInputs([<liquid:pyrotheum>*1000])
    .outputs(<gregtech:meta_dust:32104>)
    .duration(40)
    .EUt(7680)
    .buildAndRegister();

//荧光信素
chemical_bath.recipeBuilder()
    .inputs(<ore:dustSignalum>)
    .fluidInputs([<liquid:glowstone>*1000])
    .outputs(<gregtech:meta_dust:32106>)
    .duration(40)
    .EUt(7680)
    .buildAndRegister();

//充能琥珀金
chemical_bath.recipeBuilder()
    .inputs(<ore:dustElectrum>)
    .fluidInputs([<liquid:redstone>*1000])
    .outputs(<gregtech:meta_dust:32103>)
    .duration(40)
    .EUt(1920)
    .buildAndRegister();

//极寒末影
chemical_bath.recipeBuilder()
    .inputs(<ore:dustEnderium>)
    .fluidInputs([<liquid:cryotheum>*1000])
    .outputs(<gregtech:meta_dust:32105>)
    .duration(40)
    .EUt(7680)
    .buildAndRegister();

//高能合金
mixer.recipeBuilder()
    .inputs([<ore:dustEnderiumCryotheum>,<ore:dustSignalumFluorescent>,<ore:dustLumiumPyrotheum>,<ore:dustElectrumFlux>])
    .fluidInputs([<liquid:astralsorcery.liquidstarlight>*16000])
    .outputs(<gregtech:meta_dust:32107>*2)
    .duration(1000)
    .EUt(30720)
    .buildAndRegister();