/*
 * ZenScript by Hikari_Nova & shang_jun_
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技能量转换器内容
*/

import mods.jei.JEI;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;

//转换器移除配方
var meta as int = 1670;
while(meta <= 1705){
    recipes.remove(<gregtech:machine>.definition.makeStack(meta));
    meta += 1;
}
//1A转换器隐藏 JEI
var meta2 as int = 1670;
while(meta2 <= 1702){
    JEI.removeAndHide(<gregtech:machine>.definition.makeStack(meta2),true);
    meta2 += 4;
}
//ULV转换器隐藏 JEI
var meta3 as int = 1671;
while(meta3 <=1673){
    JEI.removeAndHide(<gregtech:machine>.definition.makeStack(meta3),true);
    meta3 += 1;
}
//定义 EIO 导管数组
var eioConduits as IItemStack[] = [
    <enderio:item_power_conduit:0>,
    <enderio:item_power_conduit:1>,
    <enderio:item_power_conduit:2>,
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:8>,
    <enderio:item_endergy_conduit:4>,
    <enderio:item_endergy_conduit:10>,
    <enderio:item_endergy_conduit:11>
];
//定义GT机械方块数组
var gtHulls as IItemStack[] = [
    <gregtech:machine:986>,
    <gregtech:machine:987>,
    <gregtech:machine:988>,
    <gregtech:machine:989>,
    <gregtech:machine:990>,
    <gregtech:machine:991>,
    <gregtech:machine:992>,
    <gregtech:machine:993>
];
//定义GT电路板数组
var gtCircuits as IOreDictEntry[] = [
    <ore:circuitLv>,
    <ore:circuitMv>,
    <ore:circuitHv>,
    <ore:circuitEv>,
    <ore:circuitIv>,
    <ore:circuitLuv>,
    <ore:circuitZpm>,
    <ore:circuitUv>
];
//定义GT线缆材料数组
var gtCablesMaterial as string[] = [
    "Tin",
    "AnnealedCopper",
    "BlueAlloy",
    "Nichrome",
    "TungstenSteel",
    "Osmium",
    "Trinium",
    "YttriumBariumCuprate"
];
//循环添加配方(LV-ZPM 的 4,8,16A 能量转换器)
var t as int = 1675;
for i in 0 to 8 {
    var Hull = gtHulls[i];
    var Conduit = eioConduits[i];
    var Circuit = gtCircuits[i];
    var Converter4x as IItemStack = <gregtech:machine>.definition.makeStack(t);
    var Converter8x as IItemStack = <gregtech:machine>.definition.makeStack(t+1);
    var Converter16x as IItemStack = <gregtech:machine>.definition.makeStack(t+2);
    var name = gtCablesMaterial[i];
    var Cable4x as IItemStack = oreDict["wireGtQuadruple"~name].firstItem;
    var Cable8x as IItemStack = oreDict["wireGtOctal"~name].firstItem;
    var Cable16x as IItemStack = oreDict["wireGtHex"~name].firstItem;

    recipes.addShaped(Converter4x,[
        [Cable4x,Conduit,Cable4x],
        [Cable4x,Hull,Cable4x],
        [Circuit,Conduit,Circuit]
    ]);
    recipes.addShaped(Converter8x,[
        [Cable8x,Conduit,Cable8x],
        [Cable8x,Hull,Cable8x],
        [Circuit,Conduit,Circuit]
    ]);
    recipes.addShaped(Converter16x,[
        [Cable16x,Conduit,Cable16x],
        [Cable16x,Hull,Cable16x],
        [Circuit,Conduit,Circuit]
    ]);
    t += 4;
}