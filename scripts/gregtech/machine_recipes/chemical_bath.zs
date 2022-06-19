/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技化学浸洗器内容
*/

import mods.gregtech.recipe.RecipeMap;

//魔力灌注残渣
chemical_bath.recipeBuilder()
    .inputs([<ore:dustUnknownResidue>*6])
    .fluidInputs([<liquid:liquid_magic_polymer>*6000])
    .outputs([<gregtech:meta_dust:32038>*3])
    .EUt(7680)
    .duration(300)
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

//氟石矿石
chemical_bath.recipeBuilder()
    .inputs(<ore:sandstone>*64)
    .fluidInputs(<liquid:nitric_acid>*4000)
    .outputs(<gregtech:ore_fluorite_0>*4)
    .chancedOutput(<gregtech:ore_fluorite_0>*2,2500,0)
    .chancedOutput(<gregtech:ore_fluorite_0>*2,2000,0)
    .chancedOutput(<gregtech:ore_fluorite_0>*2,1500,0)
    .duration(100)
    .EUt(1024)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:sand>*64)
    .fluidInputs(<liquid:nitric_acid>*5000)
    .outputs(<gregtech:ore_fluorite_0>*2)
    .chancedOutput(<gregtech:ore_fluorite_0>*1,1500,0)
    .chancedOutput(<gregtech:ore_fluorite_0>*1,1000,0)
    .chancedOutput(<gregtech:ore_fluorite_0>*1,500,0)
    .duration(100)
    .EUt(1024)
    .buildAndRegister();

//氟石处理
chemical_bath.recipeBuilder()
    .inputs(<ore:dustFluorite>*37)
    .fluidInputs(<liquid:sulfuric_acid>*8000)
    .outputs(<gregtech:meta_dust:2032>*15,<gregtech:meta_dust:100>,<gregtech:meta_dust:41>*2,<gregtech:meta_dust:112>,<gregtech:meta_dust:25>*2)
    .fluidOutputs(<liquid:hydrofluoric_acid>*16000)
    .duration(600)
    .EUt(1920)
    .buildAndRegister();