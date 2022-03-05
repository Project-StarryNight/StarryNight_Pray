/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为通量网络内容
*/

import mods.gregtech.recipe.RecipeMap;

//通量粉尘_搅拌机
<recipemap:mixer>.recipeBuilder()
    .inputs([
        <ore:dustBedrock> * 8,
        <ore:dustNaquadahEnriched> * 4,
        <ore:dustEnderPearl> * 4
    ])
    .fluidInputs(<liquid:xenon> * 10)
    .outputs(<fluxnetworks:flux> * 16)
    .EUt(128)
    .duration(60)
    .buildAndRegister();

//通量核心_组装机
recipes.remove(<fluxnetworks:fluxcore>);
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <gregtech:meta_item_1:281> * 2,
        <fluxnetworks:flux> * 4,
        <ore:elvenPixieDust> * 6,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]}) * 4,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "permutatio"}]}) * 4
    ])
    .outputs(<fluxnetworks:fluxcore> * 4)
    .EUt(4000)
    .duration(40)
    .buildAndRegister();

//通量接入点_组装机
recipes.remove(<fluxnetworks:fluxplug>);
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <fluxnetworks:fluxcore> * 4,
        <ore:circuitElite> * 2,
        <gregtech:meta_item_1:605> * 2
    ])
    .circuit(0)
    .fluidInputs(<liquid:tetrafluoroethylene> * 1000)
    .outputs(<fluxnetworks:fluxplug>)
    .EUt(8000)
    .duration(40)
    .buildAndRegister();

//通量接出点_组装机
recipes.remove(<fluxnetworks:fluxpoint>);
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <fluxnetworks:fluxcore> * 4,
        <ore:circuitElite> * 2,
        <gregtech:meta_item_1:605> * 2
    ])
    .circuit(1)
    .fluidInputs(<liquid:tetrafluoroethylene> * 1000)
    .outputs(<fluxnetworks:fluxpoint>)
    .EUt(8000)
    .duration(40)
    .buildAndRegister();

//通量控制器_组装机
recipes.remove(<fluxnetworks:fluxcontroller>);
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <fluxnetworks:fluxcore> * 4,
        <ore:circuitElite> * 2,
        <gregtech:machine:991>
    ])
    .circuit(2)
    .fluidInputs(<liquid:tetrafluoroethylene> * 1000)
    .outputs(<fluxnetworks:fluxcontroller>)
    .EUt(8000)
    .duration(60)
    .buildAndRegister();

//通量存储器_组装机
#基础_组装机
recipes.remove(<fluxnetworks:fluxstorage>);
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <fluxnetworks:fluxblock>,
        <ore:circuitAdvanced> * 2,
        <gregtech:machine:988>,
        <metaitem:energy_crystal>
    ])
    .circuit(0)
    .outputs(<fluxnetworks:fluxstorage>)
    .EUt(500)
    .duration(60)
    .buildAndRegister();

#大型_组装机
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <fluxnetworks:fluxblock> * 2,
        <ore:circuitExtreme> * 2,
        <gregtech:machine:989>,
        <metaitem:lapotron_crystal>
    ])
    .circuit(1)
    .outputs(<fluxnetworks:herculeanfluxstorage>)
    .EUt(2000)
    .duration(80)
    .buildAndRegister();

#巨型_组装机
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);
<recipemap:assembler>.recipeBuilder()
    .inputs([
        <fluxnetworks:fluxblock> * 3,
        <ore:circuitElite> * 2,
        <gregtech:machine:990>,
        <metaitem:energy.lapotronic_orb>
    ])
    .circuit(2)
    .outputs(<fluxnetworks:gargantuanfluxstorage>)
    .EUt(8000)
    .duration(120)
    .buildAndRegister();
