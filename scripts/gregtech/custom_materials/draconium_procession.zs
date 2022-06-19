/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为龙素产线内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

//龙心处理
// starry_universe_cultivation_cabin.recipeBuilder()
//     .inputs(<draconicevolution:dragon_heart>)
//     .fluidInputs([<liquid:sterilized_growth_medium> * 8000])
//     .outputs([
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64,
//         <contenttweaker:dragon_cell> * 64
//     ])
//     .fluidOutputs([<liquid:dragon_blood> * 128000])
//     .circuit(4)
//     .EUt(7680)
//     .duration(12000)
//     .buildAndRegister();

//龙蛋复制
starry_universe_cultivation_cabin.recipeBuilder()
    .inputs(<minecraft:dragon_egg>)
    .fluidInputs([<liquid:sterilized_growth_medium> * 8000])
    .outputs(<minecraft:dragon_egg> * 4)
    .fluidOutputs([<liquid:mutagen> * 3200])
    .circuit(0)
    .EUt(1920)
    .duration(4500)
    .buildAndRegister();

//龙息
starry_universe_cultivation_cabin.recipeBuilder()
    .inputs(<minecraft:dragon_egg>)
    .fluidInputs([<liquid:sterilized_growth_medium> * 8000])
    .outputs(<minecraft:dragon_breath> * 64)
    .fluidOutputs([<liquid:dragon_blood> * 16000,<liquid:mutagen> * 3200])
    .circuit(2)
    .EUt(1920)
    .duration(9000)
    .buildAndRegister();

//龙组织
starry_universe_cultivation_cabin.recipeBuilder()
    .inputs(<minecraft:dragon_egg>)
    .fluidInputs([<liquid:sterilized_growth_medium> * 8000])
    .outputs([<contenttweaker:dragon_cell> * 64,<contenttweaker:dragon_cell> * 64,<contenttweaker:dragon_cell> * 64,<contenttweaker:dragon_cell> * 64])
    .fluidOutputs([<liquid:dragon_blood> * 16000,<liquid:mutagen> * 3200])
    .circuit(3)
    .EUt(1920)
    .duration(9000)
    .buildAndRegister();

//龙息溶液
mixer.recipeBuilder()
    .inputs(<minecraft:dragon_breath> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .fluidOutputs([<liquid:dragon_breath_solution> * 2000])
    .EUt(7680)
    .duration(160)
    .buildAndRegister();

//活性龙组织混合液
mixer.recipeBuilder()
    .inputs(<contenttweaker:dragon_cell> * 8)
    .fluidInputs([<liquid:dragon_breath_solution> * 1000,<liquid:dragon_blood> * 1000])
    .fluidOutputs([<liquid:activated_dragon_tissue_mixture> * 1000])
    .EUt(7680)
    .duration(40)
    .buildAndRegister();

//突变龙组织混合液
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustTinyPlutonium241>)
    .fluidInputs([<liquid:radon> *250,<liquid:activated_dragon_tissue_mixture> * 1000])
    .fluidOutputs([<liquid:mutated_dragon_tissue_mixture>*2000])
    .EUt(7680)
    .duration(250)
    .buildAndRegister();

//突变龙组织混合液(激发态)
fluid_heater.recipeBuilder()
    .fluidInputs([<liquid:mutated_dragon_tissue_mixture> * 1500])
    .fluidOutputs([<liquid:excited_mutated_dragon_tissue_mixture> * 750])
    .EUt(7680)
    .circuit(1)
    .duration(200)
    .buildAndRegister();

//氢氧化超能硅岩
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustNaquadria>,<ore:dustSodiumHydroxide>*9)
    .outputs(<gregtech:meta_dust:32032>*7,<gregtech:meta_dust:101>*3)
    .EUt(480)
    .duration(480)
    .buildAndRegister();

//超能硅岩酸
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustNaquadriaHydroxide>*3,<ore:dustTinyPotassiumDichromate>)
    .fluidInputs([<liquid:hydrogen_peroxide>*1000,<liquid:petrotheum>*4000])
    .fluidOutputs([<liquid:water>*1000,<liquid:nquadriaic_acid>*1000])
    .EUt(30720)
    .duration(90)
    .buildAndRegister();

//过氧化氢
chemical_reactor.recipeBuilder()
    .inputs(<metaitem:dustPhthalicAnhydride>*15)
    .fluidInputs([<liquid:ethylbenzene>*1000])
    .outputs(<gregtech:meta_dust:32033>*30)
    .fluidOutputs([<liquid:water>*1000])
    .duration(1000)
    .EUt(1920)
    .buildAndRegister();

distillery.recipeBuilder()
    .fluidInputs([<liquid:phthalic_acid> * 1000])
    .circuit(1)
    .outputs(<metaitem:dustPhthalicAnhydride> * 15)
    .fluidOutputs([<liquid:water> * 1000])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

chemical_reactor.recipeBuilder()
    .fluidInputs([<liquid:hydrogen>*6000, <liquid:oxygen>*6000])
    .notConsumable(<ore:dustPalladium>,<ore:dustEthylanthraquinone>)
    .fluidOutputs([<liquid:hydrogen_peroxide>*3000])
    .duration(330)
    .EUt(720)
    .buildAndRegister();

//酸性龙素溶液
chemical_bath.recipeBuilder()
    .inputs(<ore:dustDragonEssence>*15)
    .fluidInputs([<liquid:nquadriaic_acid>*5000])
    .fluidOutputs([<liquid:acidic_draconium_solution>*5000])
    .outputs(<metaitem:dustEnderEye>*5)
    .duration(1400)
    .EUt(480)
    .buildAndRegister();

//富集&枯竭龙素溶液
centrifuge.recipeBuilder()
    .fluidInputs([<liquid:acidic_draconium_solution>*5000])
    .notConsumable(<gregtech:meta_item_1:207>*2)
    .fluidOutputs([<liquid:enriched_draconium_solution>*750,<liquid:depleted_draconium_solution>*4250])
    .duration(300)
    .EUt(7680)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs([<liquid:depleted_draconium_solution>*2000])
    .notConsumable(<gregtech:meta_item_1:207>*2)
    .fluidOutputs([<liquid:nquadriaic_acid>*1900])
    .outputs([<gregtech:meta_dust:32026>*4,<gregtech:meta_dust:329>*8,<gregtech:meta_dust:372>*5,<gregtech:meta_dust:280>*4])
    .chancedOutput(<gregtech:meta_dust:32035>,5000,250)
    .duration(420)
    .EUt(1920)
    .buildAndRegister();

distillery.recipeBuilder()
    .fluidInputs([<liquid:enriched_draconium_solution>*1000])
    .fluidOutputs([<liquid:nquadriaic_acid>*800])
    .circuit(1)
    .outputs(<gregtech:meta_dust:32027>*6)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

//龙素粉
autoclave.recipeBuilder()
    .fluidInputs([<liquid:excited_mutated_dragon_tissue_mixture> * 250])
    .inputs([<gregtech:meta_dust:32027>*3,<ore:dustCalcium>])
    .outputs([<gregtech:meta_dust:32022>,<gregtech:meta_dust:346>*3])
    .duration(40)
    .EUt(7680)
    .buildAndRegister();

//充能龙素粉
chemical_bath.recipeBuilder()
    .fluidInputs([<liquid:plasma.helium>*7200])
    .fluidOutputs([<liquid:helium>*6000])
    .inputs([<ore:dustDraconium>*36])
    .outputs([<gregtech:meta_dust:32030>*36])
    .duration(1050)
    .EUt(122880)
    .buildAndRegister();

//觉醒龙素粉
mixer.recipeBuilder()
    .fluidInputs([<liquid:americium>*576,<liquid:xenon>*4000])
    .inputs([<ore:dustEmpoweredDraconium>*8,<ore:dustNaquadria>,<ore:itemPrecientPowder>,<ore:itemVibrantPowder>,<ore:itemPulsatingPowder>,<ore:itemEnderCrystalPowder>])
    .outputs([<gregtech:meta_dust:32023>*4])
    .duration(320)
    .EUt(122880)
    .buildAndRegister();

//魔力冷却液
mixer.recipeBuilder()
    .fluidInputs([<liquid:distilled_water>*10000,<liquid:ice>*4000])
    .inputs([<ore:dustLapis>*8,<ore:powderMana>*4,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "gelum"}]})*2])
    .fluidOutputs([<liquid:mana_coolant>*16000])
    .duration(400)
    .EUt(1920)
    .buildAndRegister();
//热龙素锭
electric_blast_furnace.findRecipe(122880, [<metaitem:dustDraconium>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
electric_blast_furnace.findRecipe(122880, [<metaitem:dustDraconium>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:neon> * 25]).remove();
electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDraconium>)
    .fluidInputs([<liquid:enchanted_nitro_diesel>*500])
    .outputs(<gregtech:meta_ingot_hot:32022>)
    .duration(900)
    .EUt(122880)
    .circuit(0)
    .property("temperature", 7000)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDraconium>)
    .fluidInputs([<liquid:gasoline_premium>*200])
    .outputs(<gregtech:meta_ingot_hot:32022>)
    .duration(600)
    .EUt(122880)
    .circuit(1)
    .property("temperature", 7000)
    .buildAndRegister();
//龙素锭
vacuum_freezer.findRecipe(120, [<metaitem:ingotHotDraconium>], null).remove();
vacuum_freezer.recipeBuilder()
    .inputs(<ore:ingotHotDraconium>)
    .fluidInputs([<liquid:mana_coolant>*1000])
    .outputs(<gregtech:meta_ingot:32022>)
    .duration(300)
    .EUt(7680)
    .buildAndRegister();
//空间冷却液
mixer.recipeBuilder()
    .fluidInputs([<liquid:mana_coolant>*10000,<liquid:cryotheum>*4000])
    .inputs([<deepmoblearning:living_matter_extraterrestrial>*8,<deepmoblearning:living_matter_hellish>*8,<deepmoblearning:living_matter_overworldian>*8,<ore:itemEnderCrystalPowder>*4])
    .fluidOutputs([<liquid:space_coolant>*16000])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();
//热觉醒龙素锭
electric_blast_furnace.findRecipe(491520, [<metaitem:dustDraconiumAwakened>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:krypton> * 10]).remove();
electric_blast_furnace.findRecipe(491520, [<metaitem:dustDraconiumAwakened>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDraconiumAwakened>)
    .fluidInputs([<liquid:enchanted_nitro_diesel>*1000])
    .outputs(<gregtech:meta_ingot_hot:32023>)
    .duration(1200)
    .EUt(491520)
    .circuit(0)
    .property("temperature", 9000)
    .buildAndRegister();

electric_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDraconiumAwakened>)
    .fluidInputs([<liquid:gasoline_premium>*400])
    .outputs(<gregtech:meta_ingot_hot:32023>)
    .duration(800)
    .EUt(491520)
    .circuit(1)
    .property("temperature", 9000)
    .buildAndRegister();
//觉醒龙素锭
vacuum_freezer.findRecipe(120, [<metaitem:ingotHotDraconiumAwakened>], null).remove();
vacuum_freezer.recipeBuilder()
    .inputs(<ore:ingotHotDraconiumAwakened>)
    .fluidInputs([<liquid:space_coolant>*1000])
    .outputs(<gregtech:meta_ingot:32023>)
    .duration(300)
    .EUt(7680)
    .buildAndRegister();