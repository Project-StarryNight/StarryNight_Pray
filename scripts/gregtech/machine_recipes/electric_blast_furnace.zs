/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技电力高炉内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//模块化合金_高级合成
    //对应电压等级金属锭
    var ingots as IOreDictEntry[] = [
        <ore:ingotAluminium>,
        <ore:ingotStainlessSteel>,
        <ore:ingotTitanium>,
        <ore:ingotTungstenSteel>,
        <ore:ingotRhodiumPlatedPalladium>,
        <ore:ingotNaquadahAlloy>
    ];

    //电量消耗
    var euts as int[] = [
        128,
        512,
        2048,
        8192,
        32768,
        131072
    ];

    //工作时间
    var durations as int[] = [
        160,
        80,
        40,
        20,
        10,
        5
    ];

    //输出的模块化合金数量
    var modulariums as IItemStack[] = [
        <modularmachinery:itemmodularium> * 2,
        <modularmachinery:itemmodularium> * 4,
        <modularmachinery:itemmodularium> * 8,
        <modularmachinery:itemmodularium> * 16,
        <modularmachinery:itemmodularium> * 32,
        <modularmachinery:itemmodularium> * 64
    ];

    //额外输出的模块化合金数量
    var extramodulariums as IItemStack[] = [
        <modularmachinery:itemmodularium> * 2,
        <modularmachinery:itemmodularium> * 4,
        <modularmachinery:itemmodularium> * 8,
        <modularmachinery:itemmodularium> * 16,
        <modularmachinery:itemmodularium> * 32,
        <modularmachinery:itemmodularium> * 64
    ];

    //输入的标准纯银数量
    var sterlingSilvers as IIngredient[] = [
        <ore:ingotSterlingSilver> * 1,
        <ore:ingotSterlingSilver> * 2,
        <ore:ingotSterlingSilver> * 4,
        <ore:ingotSterlingSilver> * 8,
        <ore:ingotSterlingSilver> * 16,
        <ore:ingotSterlingSilver> * 32
    ];

    //温度要求
    var temps as int[] = [
        800,
        1600,
        2400,
        3200,
        3800,
        4400
    ];

    //数组循环添加配方_合金炉烧制模块化合金
    for i, ingot in ingots {
        var eut = euts[i];
        var duration = durations[i];
        var modularium = modulariums[i];
        var extramodularium = extramodulariums[i];
        var sterlingSilver = sterlingSilvers[i];
        var temp = temps[i];

        electric_blast_furnace.recipeBuilder()
            .inputs([
                ingot,
                sterlingSilver
            ])
            .outputs([
                modularium,
                extramodularium
            ])
            .duration(duration)
            .EUt(eut)
            .property("temperature", temp)
            .buildAndRegister();
    }

//炉渣_富炉渣
    #炉渣
    electric_blast_furnace.recipeBuilder()
        .inputs([
            <ore:gemCoal>,
            <ore:dustAsh> * 2
        ])
        .outputs([
            <thermalfoundation:material:864>
        ])
        .chancedOutput(<thermalfoundation:material:864>, 7500, 500)
        .duration(200)
        .EUt(64)
        .property("temperature", 800)
        .buildAndRegister();
    #富炉渣
        electric_blast_furnace.recipeBuilder()
        .inputs([
            <ore:gemFlawlessCoal>,
            <ore:dustDarkAsh> * 2
        ])
        .outputs([
            <thermalfoundation:material:865>
        ])
        .chancedOutput(<thermalfoundation:material:865>, 5000, 1000)
        .chancedOutput(<thermalfoundation:material:865>, 2500, 500)
        .duration(300)
        .EUt(256)
        .property("temperature", 1400)
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

//极限合金
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:ingotToughAlloy>,<ore:ingotHardCarbonAlloy>])
    .fluidInputs([<liquid:deuterium>*2000])
    .outputs([<gregtech:meta_ingot_hot:32040>*2])
    .EUt(7680)
    .duration(500)
    .property("temperature", 5100)
    .buildAndRegister();

//晶素锭
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:blockEnderAlloyAdvanced>,<ore:gemExquisiteDiamond>*2,<ore:gemNetherStar>])
    .fluidInputs([<liquid:argon>*1000])
    .outputs([<gregtech:meta_ingot_hot:32025>*2])
    .EUt(480)
    .duration(3000)
    .property("temperature", 5000)
    .buildAndRegister();