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

//硼铁合金
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

//高能合金
mixer.recipeBuilder()
    .inputs([<ore:dustEnderiumCryotheum>,<ore:dustSignalumFluorescent>,<ore:dustLumiumPyrotheum>,<ore:dustElectrumFlux>])
    .fluidInputs([<liquid:astralsorcery.liquidstarlight>*16000])
    .outputs(<gregtech:meta_dust:32107>*2)
    .duration(1000)
    .EUt(30720)
    .buildAndRegister();
