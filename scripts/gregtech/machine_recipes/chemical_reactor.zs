/*
 *  ZenScript by Hikari_Nova & shang_jun
 *  未经过授权，禁止用于其他整合包或服务器内容。
 *  此脚本为格雷科技化学反应釜内容
 */

import mods.gregtech.recipe.RecipeMap;

//基岩精华
chemical_reactor.recipeBuilder()
    .inputs([<ore:compressed1xDustBedrock> * 8])
    .outputs(<gregtech:meta_dust:32043>)
    .fluidInputs([<liquid:nitric_acid> * 2000])
    .fluidOutputs([<liquid:sulfuric_nickel_solution> * 2000])
    .EUt(30720)
    .duration(80)
    .buildAndRegister();

//RP-1混合火箭燃料
chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:rp_1_fuel> * 1000, <liquid:liquid_oxygen> * 250)
    .fluidOutputs(<liquid:rp_1_hybrid_rocket_fuel> * 1500)
    .EUt(480)
    .duration(60)
    .buildAndRegister();

//浓缩肼
chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:hydrazine> * 4000, <liquid:methanol> * 6000)
    .fluidOutputs(<liquid:dense_hydrazine_hybrid_rocket_fuel> * 10000)
    .circuit(2)
    .EUt(480)
    .duration(300)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:ammonia> * 2000, <liquid:hydrogen_peroxide> * 1000)
    .fluidOutputs(<liquid:hydrazine> * 2000, <liquid:water> * 2000)
    .circuit(2)
    .EUt(120)
    .duration(100)
    .buildAndRegister();

//一甲基肼
large_chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:methanol> * 2000, <liquid:sulfuric_acid> * 1000, <liquid:hydrazine> * 2000)
    .fluidOutputs(<liquid:monomethylhydrazine> * 2000, <liquid:sulfur_trioxide> * 1000)
    .circuit(2)
    .EUt(16000)
    .duration(20)
    .buildAndRegister();

//紫色燃料
large_chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:monomethylhydrazine> * 6000, <liquid:nitric_acid> * 3000)
    .fluidOutputs(<liquid:purple_rocket_fuel> * 9000)
    .circuit(3)
    .EUt(480)
    .duration(900)
    .buildAndRegister();

//偏二甲肼
large_chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen> * 2000, <liquid:formaldehyde> * 1000, <liquid:acetylhydrazine> * 1000)
    .fluidOutputs(<liquid:unsymmetrical_dimethylhydrazine> * 2000, <liquid:acetic_acid> * 900)
    .circuit(2)
    .duration(20)
    .EUt(122880)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:methanol> * 1000, <liquid:oxygen> * 1000)
    .fluidOutputs(<liquid:formaldehyde> * 1000)
    .duration(50)
    .EUt(480)
    .buildAndRegister();

large_chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:hydrazine> * 1000, <liquid:ethanol> * 100, <liquid:acetic_acid> * 1000)
    .fluidOutputs(<liquid:acetylhydrazine> * 1000)
    .circuit(2)
    .duration(30)
    .EUt(30720)
    .buildAndRegister();

//绿色燃料
large_chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:unsymmetrical_dimethylhydrazine> * 8000, <liquid:dinitrogen_tetroxide> * 8000)
    .fluidOutputs(<liquid:green_rocket_fuel> * 20000)
    .duration(1200)
    .EUt(1920)
    .buildAndRegister();

//二乙胺
chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:ethanol> * 2000, <liquid:ammonia> * 1000)
    .fluidOutputs(<liquid:diethylamine> * 1000)
    .circuit(1)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

//助燃剂
large_chemical_reactor.recipeBuilder()
    .inputs(<ore:dustSaltpeter> * 2, <ore:elvenPixieDust>)
    .fluidInputs(<liquid:hydrogen_peroxide> * 4000, <liquid:nitrogen_dioxide> * 4000, <liquid:celestial_energy> * 100)
    .fluidOutputs(<liquid:combustion_promotor> * 8000)
    .circuit(16)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

//氯化亚铁
chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:iron_iii_chloride> * 1000, <liquid:hydrogen> * 1000)
    .fluidOutputs(<liquid:ferrous_chloride> * 1000, <liquid:hydrochloric_acid> * 1000)
    .circuit(7)
    .duration(70)
    .EUt(120)
    .buildAndRegister();

//不纯二茂铁混合物
large_chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:ice> * 4000, <liquid:diethylamine> * 8000, <liquid:ferrous_chloride> * 1000, <liquid:cyclopentadiene> * 2000)
    .fluidOutputs(<liquid:impure_ferrocene_mixture> * 15000)
    .circuit(2)
    .duration(1600)
    .EUt(120)
    .buildAndRegister();

//二茂铁溶液
chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:impure_ferrocene_mixture> * 7500, <liquid:ether> * 1000)
    .fluidOutputs(<liquid:ferrocene_solution> * 1000, <liquid:ferrocene_waste> * 5000)
    .circuit(1)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

//航空煤油
large_chemical_reactor.recipeBuilder()
    .inputs(<ore:dustSodiumHydroxide> * 8, <ore:dustFerrocene> * 4)
    .fluidInputs(<liquid:kerosene> * 40000, <liquid:naphtha> * 3000, <liquid:diethylamine> * 1000)
    .fluidOutputs(<liquid:jet_fuel_no_3> * 48000)
    .duration(2000)
    .EUt(1920)
    .buildAndRegister();

large_chemical_reactor.recipeBuilder()
    .inputs(<ore:dustFerrocene> * 4)
    .fluidInputs(<liquid:tetranitromethane> * 2000, <liquid:lpg> * 1000, <liquid:light_fuel> * 3000, <liquid:naphtha> * 40000, <liquid:combustion_promotor> * 4000)
    .fluidOutputs(<liquid:jet_fuel_a> * 56000)
    .duration(2400)
    .EUt(7680)
    .buildAndRegister();

//乙醚
chemical_reactor.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid> * 1000, <liquid:ethanol> * 1000)
    .fluidOutputs(<liquid:ether> * 500, <liquid:diluted_sulfuric_acid> * 1500)
    .circuit(2)
    .EUt(120)
    .duration(510)
    .buildAndRegister();