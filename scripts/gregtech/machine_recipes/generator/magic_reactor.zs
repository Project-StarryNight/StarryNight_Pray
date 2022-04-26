import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

var inputs as IIngredient[] = [
<gregtech:meta_crushed:32101>,
<gregtech:meta_dust:32101>,
<gregtech:meta_plate:32101>,
<thaumcraft:tallow>,
<gregtech:meta_gem:32101>,
<thaumcraft:amber>,
<minecraft:experience_bottle>,
<gregtech:meta_dust:2508>,
<gregtech:meta_gem_flawless:32101>,
<minecraft:ender_eye>,
<gregtech:meta_gem_exquisite:32101>,
<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "fluid_quicksilver", Amount: 1000}}),
<minecraft:ghast_tear>,
<thaumcraft:quicksilver>,
<gregtech:meta_item_1:78>.withTag({Fluid: {FluidName: "lifeessence", Amount: 1000}}),
<thaumcraft:crystal_essence:*>,
<thaumadditions:crystal_block:*>,
<thaumcraft:salis_mundus>,
<gregtech:meta_dust:1602>,
<gregtech:meta_plate:1602>,
<minecraft:beacon>,
<minecraft:nether_star>,
<thaumcraft:primordial_pearl>,
<thaumicwonders:void_beacon>,
<bloodmagic:slate:1>,
<bloodmagic:slate:2>,
<bloodmagic:slate:3>,
<bloodmagic:slate:4>,
<minecraft:golden_apple:1>
];

var times as int[] = [
1000,
3000,
3000,
4000,
6000,
6000,
10000,
10000,
12000,
20000,
24000,
32000,
50000,
64000,
100000,
16000,
64000,
72000,
50000000,
50000000,
100000000,
100000000,
100000000,
1000000000,
400000,
1000000,
8000000,
20000000,
6400000,
];

var outputs as IItemStack [] = [
<bloodmagic:slate>,
<bloodmagic:slate:1>,
<bloodmagic:slate:2>,
<bloodmagic:slate:3>,
<minecraft:apple>
];

//循环添加
for i in 0 to 29 {
var input = inputs[i];
var time = times[i];

if(i <= 23){
    <recipemap:magicreactor0>.recipeBuilder()
        .inputs(input*1)
        .EUt(-64)
        .duration(time / 70)
        .buildAndRegister();
    <recipemap:magicreactor1>.recipeBuilder()
        .inputs(input*1)
        .EUt(-128)
        .duration(time / 150 )
        .buildAndRegister();
    <recipemap:magicreactor2>.recipeBuilder()
        .inputs(input*1)
        .EUt(-512)
        .duration(time / 640)
        .buildAndRegister();}
else if(i >= 24){
    var output = outputs[i - 24];
    <recipemap:magicreactor0>.recipeBuilder()
        .inputs(input*1)
        .outputs(output*1)
        .EUt(-64)
        .duration(time / 70)
        .buildAndRegister();
    <recipemap:magicreactor1>.recipeBuilder()
        .inputs(input*1)
        .outputs(output*1)
        .EUt(-128)
        .duration(time / 150 )
        .buildAndRegister();
    <recipemap:magicreactor2>.recipeBuilder()
        .inputs(input*1)
        .outputs(output*1)
        .EUt(-512)
        .duration(time / 640)
        .buildAndRegister();}
}