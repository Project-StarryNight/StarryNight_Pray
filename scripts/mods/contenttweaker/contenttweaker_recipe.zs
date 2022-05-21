/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为Contenttweaker物品配方内容
*/

import mods.gregtech.recipe.RecipeMap;

//致密氢系列
fluid_solidifier.recipeBuilder()
    .fluidInputs([<liquid:hydrogen>*1000])
    .notConsumable(<gregtech:meta_item_1:17>)
    .outputs(<contenttweaker:solid_hydrogen>)
    .EUt(120)
    .duration(50)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs([<contenttweaker:solid_hydrogen>*9])
    .outputs(<contenttweaker:dense_hydrogen>)
    .EUt(480)
    .duration(100)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs([<contenttweaker:dense_hydrogen>*9])
    .outputs(<contenttweaker:hyper_dense_hydrogen>)
    .EUt(1920)
    .duration(100)
    .buildAndRegister();

//恒星容器
assembler.recipeBuilder()
    .inputs([<ore:plateDoubleNaquadahAlloy>*10,<ore:stickDuranium>*12,<ore:stickEnderium>*4,<gregtech:transparent_casing:1>*6,<ore:pipeHugeFluidEuropium>])
    .outputs(<contenttweaker:star_container>)
    .EUt(122880)
    .duration(700)
    .buildAndRegister();

//人造太阳
electric_blast_furnace.recipeBuilder()
    .inputs([<contenttweaker:star_container>,<contenttweaker:hyper_dense_hydrogen>*16])
    .outputs(<contenttweaker:artificial_sun>)
    .fluidInputs([<liquid:krypton>* 8000])
    .EUt(491520)
    .duration(2800)
    .property("temperature", 9000)
    .buildAndRegister();

//恒星碎片
centrifuge.recipeBuilder()
    .inputs(<contenttweaker:artificial_sun>)
    .notConsumable(<gregtech:meta_item_1:208>*16)
    .outputs([<contenttweaker:stellar_debris>*3,<gregtech:meta_dust:2042>*20,<gregtech:meta_dust:129>*6,<gregtech:meta_dust:33>*12,<gregtech:meta_dust:124>*12,<gregtech:meta_item_1:497>*12])
    .EUt(491520)
    .duration(1200)
    .buildAndRegister();

//高能量流电路
circuit_assembler.recipeBuilder()
    .inputs([<ore:frameGtOrichalcum>*4,<ore:circuitZpm>*2,<ore:foilPolybenzimidazole>*64,<gregtech:meta_item_1:592>*64,<gregtech:meta_item_1:598>*24,<ore:wireGtSingleHighEnergyAlloy>*12])
    .outputs(<contenttweaker:high_energy_flow_circuit>)
    .fluidInputs([<liquid:soldering_alloy>*1440])
    .EUt(122880)
    .duration(1000)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<ore:frameGtOrichalcum>*4,<ore:circuitZpm>*2,<ore:foilPolybenzimidazole>*64,<gregtech:meta_item_1:592>*64,<gregtech:meta_item_1:598>*24,<ore:wireGtSingleHighEnergyAlloy>*12])
    .outputs(<contenttweaker:high_energy_flow_circuit>)
    .fluidInputs([<liquid:tin>*2880])
    .EUt(122880)
    .duration(1000)
    .buildAndRegister();

//大机器配方修改
recipes.remove(<gregtech:machine:2003>);
recipes.remove(<gregtech:machine:2015>);
recipes.remove(<gregtech:machine:2017>);
recipes.remove(<gregtech:machine:2019>);

recipes.addShaped(<gregtech:machine:2003>,[
    [<gregtech:meta_item_1:191>,<gregtech:machine:114>,<gregtech:meta_item_1:191>],
    [<gregtech:machine:114>,<contenttweaker:high_energy_flow_circuit>,<gregtech:machine:114>],
    [<gregtech:meta_item_1:161>,<gregtech:machine:114>,<gregtech:meta_item_1:161>]]);

recipes.addShaped(<gregtech:machine:2015>,[
    [<gregtech:meta_item_1:176>,<gregtech:machine:324>,<gregtech:meta_item_1:176>],
    [<gregtech:machine:324>,<contenttweaker:high_energy_flow_circuit>,<gregtech:machine:324>],
    [<ore:wireGtQuadrupleTungstenSteel>,<gregtech:machine:324>,<ore:wireGtQuadrupleTungstenSteel>]]);

recipes.addShaped(<gregtech:machine:2017>,[
    [<gregtech:transparent_casing:2>,<gregtech:machine:474>,<gregtech:transparent_casing:2>],
    [<gregtech:machine:474>,<contenttweaker:high_energy_flow_circuit>,<gregtech:machine:474>],
    [<gregtech:transparent_casing:2>,<gregtech:machine:474>,<gregtech:transparent_casing:2>]]);

recipes.addShaped(<gregtech:machine:2019>,[
    [<gregtech:meta_item_1:221>,<gregtech:machine:564>,<gregtech:meta_item_1:221>],
    [<gregtech:machine:564>,<contenttweaker:high_energy_flow_circuit>,<gregtech:machine:564>],
    [<gregtech:meta_item_1:221>,<gregtech:machine:564>,<gregtech:meta_item_1:221>]]);