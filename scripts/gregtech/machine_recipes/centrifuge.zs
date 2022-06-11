/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技离心机内容
*/

import mods.gregtech.recipe.RecipeMap;

centrifuge.recipeBuilder()
    .inputs(<minecraft:skull:2> * 1)
    .chancedOutput(<thaumcraft:brain>, 5000, 1000)
    .fluidOutputs(<liquid:fermented_biomass> * 1000)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<ore:dustMagic> * 3)
    .chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), 5000, 750)
    .chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), 5000, 750)
    .chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), 5000, 750)
    .chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), 5000, 750)
    .chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 5000, 750)
    .chancedOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 5000, 750)
    .duration(200)
    .EUt(10)
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