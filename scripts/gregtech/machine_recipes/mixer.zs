/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技搅拌机内容
*/

import mods.gregtech.recipe.RecipeMap;

//蕴魔硝化柴油
mixer.recipeBuilder()
    .inputs([
        <ore:dustSmallLithium> * 1
    ])
    .fluidInputs(<liquid:empoweredoil> * 8500, <liquid:nitro_fuel> * 1500)
    .fluidOutputs(<liquid:enchanted_nitro_diesel> * 10000)
    .EUt(256)
    .duration(60)
    .buildAndRegister();

//充能石油
mixer.recipeBuilder()
    .fluidInputs(<liquid:empoweredoil> * 1500, <liquid:oil> * 500)
    .fluidOutputs(<liquid:enriched_oil> * 2000)
    .EUt(120)
    .duration(80)
    .buildAndRegister();

//元始魔力
mixer.recipeBuilder()
    .inputs([
        <ore:dustPyrotheum> * 1,
        <ore:dustCryotheum> * 1,
        <ore:dustAerotheum> * 1,
        <ore:dustPetrotheum> * 1
    ])
    .fluidInputs(<liquid:salt_water> * 8000, <liquid:lifeessence> * 2000)
    .fluidOutputs(<liquid:mana> * 10000)
    .EUt(32)
    .duration(200)
    .buildAndRegister();

//钛铝合金粉
mixer.recipeBuilder()
    .inputs([
        <ore:dustTitanium> * 1,
        <ore:dustAluminium> * 1
    ])
    .outputs(<gregtech:meta_dust:32020> * 2)
    .EUt(128)
    .duration(80)
    .buildAndRegister();

//钛铱合金粉
mixer.recipeBuilder()
    .inputs([
        <ore:dustTitanium> * 1,
        <ore:dustIridium> * 1
    ])
    .outputs(<gregtech:meta_dust:32021> * 2)
    .EUt(384)
    .duration(100)
    .buildAndRegister();

//液态魔力聚合体
#星能液
mixer.recipeBuilder()
    .inputs([
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})
    ])
    .fluidInputs(<liquid:mana> * 5000, <liquid:astralsorcery.liquidstarlight> * 1000)
    .fluidOutputs(<liquid:liquid_magic_polymer> * 6000)
    .EUt(64)
    .duration(100)
    .buildAndRegister();
#生命源质
mixer.recipeBuilder()
    .inputs([
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}),
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})
    ])
    .fluidInputs(<liquid:mana> * 2000, <liquid:lifeessence> * 4000)
    .fluidOutputs(<liquid:liquid_magic_polymer> * 6000)
    .EUt(256)
    .duration(50)
    .buildAndRegister();
