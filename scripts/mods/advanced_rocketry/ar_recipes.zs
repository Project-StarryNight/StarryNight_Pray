/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为高级火箭配方内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//定义板数组
var plates as IOreDictEntry[] = [
    <ore:plateIron>,
    <ore:plateSteel>,
    <ore:plateAluminium>,
    <ore:plateTitanium>,
    <ore:plateTitaniumAluminide>,
    <ore:plateTitaniumIridium>,
    <ore:plateCopper>
];
//定义片数组
var sheets as IItemStack[] = [
    <libvulpes:productsheet:1>,
    <libvulpes:productsheet:6>,
    <libvulpes:productsheet:9>,
    <libvulpes:productsheet:7>,
    <advancedrocketry:productsheet:0>,
    <advancedrocketry:productsheet:1>,
    <libvulpes:productsheet:4>
];

//循环添加片配方
var i as int = 0;
while (i < 7){
    var plate as IOreDictEntry = plates[i];
    var sheet as IItemStack = sheets[i];
    bender.recipeBuilder()
        .inputs([
            plate
        ])
        .outputs([
            sheet
        ])
        .duration(40)
        .EUt(30)
        .circuit(3)
        .buildAndRegister();

    i+=1;
}

//重置循环
i = 0;

//循环添加槽配方
var EUt as int = 16;
while (i < 4){
    var sheet as IItemStack = sheets[i];
    bender.recipeBuilder()
        .inputs([
            sheet * 2
        ])
        .outputs([
            <advancedrocketry:pressuretank>.definition.makeStack(i)
        ])
        .duration(40)
        .EUt(EUt)
        .circuit(2)
        .buildAndRegister();
    EUt = EUt * 4;
    i+=1;
}