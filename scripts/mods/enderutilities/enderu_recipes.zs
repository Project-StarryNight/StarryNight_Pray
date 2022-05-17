/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为 Ender Utilities 配方内容
*/

import mods.gregtech.recipe.RecipeMap;
import mods.botania.ManaInfusion;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDictEntry;

//移除 EnU 全部配方
recipes.removeByMod("enderutilities");

//添加合金粉配方
# 基础末影合金粉
mixer.recipeBuilder()
    .inputs([
        <ore:dustSteel>,
        <ore:dustEnderPearl> * 2
    ])
    .outputs(<gregtech:meta_dust:32150> * 3)
    .duration(100)
    .EUt(16)
    .buildAndRegister();
# 增强末影合金粉
mixer.recipeBuilder()
    .inputs([
        <ore:dustAluminium> * 2,
        <ore:dustEmerald> * 1,
        <ore:dustSterlingSilver>,
        <ore:dustEnderPearl> * 2
    ])
    .outputs(<gregtech:meta_dust:32151> * 6)
    .duration(100)
    .EUt(16)
    .buildAndRegister();
# 高级末影合金粉
mixer.recipeBuilder()
    .inputs([
        <ore:itemPulsatingPowder>,
        <ore:dustElectricalSteel>,
        <ore:dustEnderPearl> * 4
    ])
    .fluidInputs(<liquid:liquid_magic_polymer> * 500)
    .outputs(<gregtech:meta_dust:32152> * 8)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

//末影板数组
var enderPlates as IOreDictEntry[] = [
    <ore:plateEnderAlloyBasic>,
    <ore:plateEnderAlloyEnhancement>,
    <ore:plateEnderAlloyAdvanced>,
    <ore:plateEnderium>
];
//电路数组
var circuits as IOreDictEntry[] = [
    <ore:circuitLv>,
    <ore:circuitMv>,
    <ore:circuitHv>,
    <ore:circuitEv>
];
//能量数组
var eut as int[] = [
    16,
    64,
    256,
    1024
];
//末影核心
# 钻石数组
var diamonds as IOreDictEntry[] = [
    <ore:gemDiamond>,
    <ore:gemFlawlessDiamond>,
    <ore:gemExquisiteDiamond>
];
# 末影核心循环添加
for i ,diamond in diamonds {
recipes.addShaped(<enderutilities:enderpart>.definition.makeStack(10 + i), [
    [<gregtech:meta_dust:416>, <gregtech:meta_nugget>.definition.makeStack(32150 + i), <gregtech:meta_dust:416>],
    [<gregtech:meta_nugget>.definition.makeStack(32150 + i), diamond, <gregtech:meta_nugget:32152>.definition.makeStack(32150 + i)],
    [<gregtech:meta_dust:416>, <gregtech:meta_nugget>.definition.makeStack(32150 + i), <gregtech:meta_dust:416>]
]);
}

//末影电容
# 循环添加
for i in 0 to 3 {
recipes.addShaped(<enderutilities:endercapacitor>.definition.makeStack(i), [
    [null, <gregtech:meta_item_1>.definition.makeStack(232 + i), null],
    [<enderio:item_basic_capacitor>.definition.makeStack(i), <enderutilities:enderpart>.definition.makeStack(15 + i), <enderio:item_basic_capacitor>.definition.makeStack(i)],
    [null, <gregtech:meta_item_1>.definition.makeStack(217 + i), null]
]);
}
# 创造末影电容
assembly_line.recipeBuilder()
	.inputs([
        <gregtech:meta_item_1:749> * 1,
        <gregtech:meta_item_1:222> * 2,
        <gregtech:meta_item_1:237> * 2,
        <enderio:item_capacitor_stellar> * 2,
        <ore:circuitLuv> * 1,
        <ore:circuitLuv> * 1,
        <ore:plateEnderium> * 4
    ])
    .fluidInputs([
        <liquid:soldering_alloy> * 1152,
        <liquid:vibrant_alloy> * 543
    ])
    .outputs(<enderutilities:endercapacitor:3>.withTag({EnderChargeAmount: 1000000000}))
    .duration(1800)
    .EUt(32000)
    .buildAndRegister();

//末影绳索
recipes.addShapeless(<enderutilities:enderpart:21>, [<botania:manaresource:16>,<gregtech:meta_dust:32150>]);

//创造破坏模块
recipes.addShaped(<enderutilities:enderpart:30>, [
    [null, <minecraft:clock>, null],
    [enderPlates[0], <ore:circuitMv>, enderPlates[0]],
    [null, <bloodmagic:component:4>, null]
]);

//末影遗物
recipes.addShaped(<enderutilities:enderpart:40>, [
    [<ore:plateEnderium>, <enderio:item_material:16>, <ore:plateEnderium>],
    [<gregtech:meta_item_1:220>, <minecraft:end_crystal>, <gregtech:meta_item_1:220>],
    [<ore:plateEnderium>, <gregtech:meta_item_1:205>, <ore:plateEnderium>]
]);

//狱卒模块
recipes.addShaped(<enderutilities:enderpart:45>, [
    [<enderio:block_dark_iron_bars>, enderPlates[0], <enderio:block_dark_iron_bars>],
    [<enderutilities:enderpart:21>, <thermalfoundation:security>, <enderutilities:enderpart:21>],
    [<enderio:block_dark_iron_bars>, enderPlates[0], <enderio:block_dark_iron_bars>]
]);

//存储卡
# 存储卡(misc)
recipes.addShaped(<enderutilities:enderpart:50>, [
    [null, <ore:wireFineGold>, <ore:foilPlastic>],
    [<ore:foilPlastic>, <gregtech:meta_item_1:592>, <ore:foilPlastic>],
    [<ore:foilPlastic>, <gregtech:meta_item_1:592>, <ore:foilPlastic>]
]);
# 循环添加存储卡(6,8,10,12)配方
for i, circuit in circuits {
    var stack = (i + 1) * 2;
    assembler.recipeBuilder()
        .inputs([
            <ore:foilAluminium> * 5,
            <ore:wireFineGold>,
            <gregtech:meta_item_1:261> * stack,
            circuit * 2,
            <appliedenergistics2:material:43> * 1,
            <appliedenergistics2:material:44> * 1,
            <appliedenergistics2:part:16> * 2,
            <appliedenergistics2:material>.definition.makeStack(35 + i),
        ])
        .outputs(<enderutilities:enderpart>.definition.makeStack(51 + i))
        .duration(200)
        .EUt(eut[i])
        .fluidInputs(<liquid:soldering_alloy> * 144)
        .buildAndRegister();
}

//链接水晶
# 无瑕宝石数组
var flawLessGems as IOreDictEntry[] = [
    <ore:gemFlawlessGreenSapphire>,
    <ore:gemFlawlessSapphire>,
    <ore:gemFlawlessAmethyst>
];
# 循环添加链接水晶(坐标,方块,传送门)
for i, flawLessGem in flawLessGems {
    recipes.addShaped(<enderutilities:linkcrystal>.definition.makeStack(i), [
        [null, <gregtech:meta_item_1:217>, null],
        [<appliedenergistics2:material:12>, flawLessGem, <appliedenergistics2:material:12>],
        [null, <gregtech:meta_dust:2508>, null]
    ]);
}

//懒人建筑仗
recipes.addShaped(<enderutilities:builderswand>, [
    [null, null, <gregtech:meta_item_1:218>],
    [null, <betterbuilderswands:wanddiamond>, null],
    [<ore:stickEnderAlloyEnhancement>, null, null]
]);

//手推车
recipes.addShaped(<enderutilities:dolly>, [
    [null, null, <ore:stickAluminium>],
    [<ore:plateAluminium>, null, <ore:stickAluminium>],
    [<ore:stickAluminium>, <ore:stickAluminium>, null]
]);

//末影弓,末影箭
recipes.addShaped(<enderutilities:enderbow>, [
    [<ore:gtceHardHammers>, <ore:stickLongEnderAlloyEnhancement>, <ore:manaString>],
    [<ore:stickLongEnderAlloyEnhancement>, <ore:ringAluminium>, <botania:manaresource:16>],
    [<ore:gtceFiles>, <ore:stickLongEnderAlloyEnhancement>, <botania:manaresource:16>]
]);
recipes.addShaped(<enderutilities:enderarrow>, [
    [null, null, <ore:nuggetEnderAlloyBasic>],
    [null, <ore:arrow>, null],
    [<ore:dustSmallEnderPearl>, null, null]
]);

//末影水桶
recipes.addShaped(<enderutilities:enderbucket>, [
    [enderPlates[0], <enderio:block_tank>, enderPlates[0]],
    [enderPlates[0], <enderutilities:enderpart:15>, enderPlates[0]],
    [<ore:gtceHardHammers>, enderPlates[0], null]
]);

//末影绳索
recipes.addShaped(<enderutilities:enderlasso>, [
    [<enderutilities:enderpart:21>, <enderutilities:enderpart:21>, <enderutilities:enderpart:21>],
    [<enderutilities:enderpart:21>, null, <enderutilities:enderpart:21>],
    [null, <enderutilities:enderpart:15>, null]
]);

//末影珍珠(可再用)
ManaInfusion.addInfusion(<enderutilities:enderpearlreusable>, <botania:manaresource:1>, 100000);
//精华末影珍珠(可再用)
ManaInfusion.addInfusion(<enderutilities:enderpearlreusable:1>, <deepmoblearning:pristine_matter_enderman>, 200000);

//末影传送门/高级末影传送门
recipes.addShaped(<enderutilities:enderporter>, [
    [enderPlates[1], <ore:itemEnderCrystal>, enderPlates[1]],
    [null, <ore:gemNetherStar>, null],
    [enderPlates[1], <gregtech:meta_item_1:203>, enderPlates[1]]
]);
recipes.addShaped(<enderutilities:enderporter:1>, [
    [enderPlates[2], <ore:itemEnderCrystal>, enderPlates[2]],
    [null, <gregtech:meta_item_1:282>, null],
    [enderPlates[2], <gregtech:meta_item_1:205>, enderPlates[2]]
]);

//末影剑/工具
recipes.addShaped(<enderutilities:endersword>, [
    [null, enderPlates[1], null],
    [<ore:gtceFiles>, enderPlates[1], <ore:gtceHardHammers>],
    [null, <ore:stickEnderAlloyEnhancement>, null]
]);
# 镐
recipes.addShaped(<enderutilities:endertool:0>, [
    [enderPlates[1], <ore:ingotEnderAlloyEnhancement>, <ore:ingotEnderAlloyEnhancement>],
    [<ore:gtceFiles>, <ore:stickEnderAlloyEnhancement>, <ore:gtceHardHammers>],
    [null, <ore:stickEnderAlloyEnhancement>, null]
]);
# 斧
recipes.addShaped(<enderutilities:endertool:1>, [
    [enderPlates[1], <ore:ingotEnderAlloyEnhancement>, <ore:gtceHardHammers>],
    [enderPlates[1], <ore:stickEnderAlloyEnhancement>, null],
    [<ore:gtceFiles>, <ore:stickEnderAlloyEnhancement>, null]
]);
# 铲
recipes.addShaped(<enderutilities:endertool:2>, [
    [<ore:gtceFiles>, enderPlates[1], <ore:gtceHardHammers>],
    [null, <ore:stickEnderAlloyEnhancement>, null],
    [null, <ore:stickEnderAlloyEnhancement>, null]
]);
# 锄
recipes.addShaped(<enderutilities:endertool:3>, [
    [enderPlates[1], <ore:ingotEnderAlloyEnhancement>, <ore:gtceHardHammers>],
    [<ore:gtceFiles>, <ore:stickEnderAlloyEnhancement>, null],
    [null, <ore:stickEnderAlloyEnhancement>, null]
]);

//手提包/手提包(大)
assembler.recipeBuilder()
    .inputs([
        <ore:circuitHv> * 1,
        <gregtech:meta_item_1:261> * 1,
        enderPlates[1] * 2,
        <gregtech:meta_item_1:203> * 2,
        <thermalexpansion:satchel:2>,
        <appliedenergistics2:drive>
    ])
    .fluidInputs(<liquid:soldering_alloy> * 543)
    .outputs(<enderutilities:handybag>)
    .duration(300)
    .EUt(384)
    .buildAndRegister();
assembly_line.recipeBuilder()
    .inputs([
        <ore:circuitIv> * 1,
        <gregtech:meta_item_1:262> * 1,
        <gregtech:meta_item_1:206> * 2,
        <ore:plateEnderium> * 4,
        <enderutilities:handybag:0> * 1,
        <enderutilities:enderpart:17> * 1
    ])
    .fluidInputs([
        <liquid:soldering_alloy> * 543,
        <liquid:vibrant_alloy> * 288
    ])
    .outputs(<enderutilities:handybag:1>)
    .duration(1200)
    .EUt(6144)
    .buildAndRegister();

//水之魔杖/超级水之魔杖
recipes.addShaped(<enderutilities:icemelter:1>, [
    [null, null, <gregtech:meta_item_1:219>],
    [null, <ore:stickGold>, null],
    [<actuallyadditions:item_crystal_empowered:4>, null, null]
]);
recipes.addShaped(<enderutilities:icemelter>, [
    [null, null, <gregtech:meta_item_1:218>],
    [null, <ore:stickGold>, null],
    [<actuallyadditions:item_crystal:2>, null, null]
]);

//物品栏交换器
recipes.addShaped(<enderutilities:inventoryswapper>, [
    [<ore:plateBlackBronze>, null, <ore:plateBlackBronze>],
    [<gregtech:meta_item_1:188>, <enderutilities:enderpart:50>, <gregtech:meta_item_1:188>],
    [<ore:plateBlackBronze>, <appliedenergistics2:drive>, <ore:plateBlackBronze>]
]);

//生命物质操纵器
recipes.addShaped(<enderutilities:livingmanipulator>, [
    [<gregtech:meta_item_1:188>, <ore:stickLongAluminium>, <enderutilities:enderpart:16>],
    [null, null, <ore:stickAluminium>],
    [null, null, <enderio:item_soul_vial>]
]);

//生物轭具
recipes.addShaped(<enderutilities:mobharness>, [
    [null, <gregtech:meta_item_1:188>, null],
    [enderPlates[0], <minecraft:saddle>, enderPlates[0]],
    [null, <enderio:item_soul_vial>, null]
]);

//清空器
recipes.addShaped(<enderutilities:nullifier>, [
    [enderPlates[0], <gregtech:meta_item_1:187>, enderPlates[0]],
    [<appliedenergistics2:material:44>, <enderutilities:enderpart:51>, <appliedenergistics2:material:43>],
    [enderPlates[0], <minecraft:lava_bucket>, enderPlates[0]]
]);

//宠物合约
recipes.addShaped(<enderutilities:pet_contract>, [
    [null, <enderutilities:enderpart:21>, null],
    [null, <astralsorcery:itemcraftingcomponent:5>, null],
    [null, <minecraft:name_tag>, null]
]);

//物品拾取管理器
recipes.addShaped(<enderutilities:pickupmanager>, [
    [<gregtech:meta_item_1:187>, enderPlates[0], <gregtech:meta_item_1:187>],
    [<ore:circuitLv>, <enderutilities:enderpart:50>, <ore:circuitLv>],
    [<gregtech:meta_item_1:187>, enderPlates[0], <gregtech:meta_item_1:187>]
]);

//快速转存器
recipes.addShaped(<enderutilities:quickstacker>, [
    [<ore:circuitLv>, <gregtech:meta_item_1:202>, <ore:circuitLv>],
    [<gregtech:meta_item_1:187>, <enderutilities:enderpart:50>, <gregtech:meta_item_1:187>],
    [<ore:circuitLv>, <gregtech:meta_item_1:202>, <ore:circuitLv>]
]);

//尺子
recipes.addShaped(<enderutilities:ruler>, [
    [null, null, <gregtech:meta_item_1:232>],
    [null, <ore:stickLongEnderAlloyBasic>, enderPlates[0]],
    [<gregtech:meta_item_1:232>, enderPlates[0], <enderutilities:enderpart:50>]
]);

//注射器
assembler.recipeBuilder()
    .inputs([
        <gregtech:meta_item_1:517> * 1
    ])
    .fluidInputs(<liquid:stainless_steel> * 36)
    .outputs(<enderutilities:syringe>)
    .duration(80)
    .EUt(8)
    .buildAndRegister();
# 定义注射器材料物品
var syringeMaterials as IItemStack[] = [
    <tconstruct:edible:3>,
    <minecraft:golden_apple>,
    <minecraft:rotten_flesh>
];
# 循环添加阻滞/兴奋/镇静注射器配方
for i, syringeMaterial in syringeMaterials {
    canner.recipeBuilder()
        .inputs([
            <enderutilities:syringe> * 3,
            syringeMaterial
        ])
        .outputs(<enderutilities:syringe>.definition.makeStack(1 + i) * 3)
        .duration(200)
        .EUt(16)
        .buildAndRegister();
}

//虚空镐
recipes.addShaped(<enderutilities:void_pickaxe>.withTag({ench: [{lvl: 5 as short, id: 32}]}), [
    [null, <minecraft:lava_bucket>, null],
    [null, <enderutilities:endertool>, null],
    [null, <enderutilities:enderpart:16>, null]
]);

//可调储物箱
recipes.addShaped(<enderutilities:asu>, [
    [<ore:screwGold>, enderPlates[0], <ore:screwGold>],
    [enderPlates[0], <enderutilities:enderpart:52>, enderPlates[0]],
    [<ore:screwGold>, enderPlates[0], <ore:screwGold>]
]);

//吊桥/高级吊桥
recipes.addShaped(<enderutilities:draw_bridge>, [
    [enderPlates[0], <ore:circuitLv>, enderPlates[0]],
    [<gregtech:meta_item_1:202>, <enderutilities:enderpart:15>, <gregtech:meta_item_1:202>],
    [enderPlates[0], <enderutilities:enderpart:51>, enderPlates[0]]
]);
recipes.addShaped(<enderutilities:draw_bridge:1>, [
    [enderPlates[2], <ore:circuitHv>, enderPlates[2]],
    [<gregtech:meta_item_1:204>, <enderutilities:enderpart:17>, <gregtech:meta_item_1:204>],
    [enderPlates[2], <enderutilities:enderpart:51>, enderPlates[2]]
]);

//插入器/插入器(过滤型)
recipes.addShaped(<enderutilities:inserter> * 2, [
    [enderPlates[0], enderPlates[0], enderPlates[0]],
    [<gregtech:meta_item_1:187>, <ore:circuitUlv>, <gregtech:meta_item_1:187>],
    [enderPlates[0], enderPlates[0], enderPlates[0]]
]);
recipes.addShaped(<enderutilities:inserter:1> * 2, [
    [enderPlates[0], enderPlates[0], enderPlates[0]],
    [<gregtech:meta_item_1:187>, <ore:circuitLv>, <gregtech:meta_item_1:187>],
    [enderPlates[0], enderPlates[0], enderPlates[0]]
]);

//地板/劣质地板
recipes.addShaped(<enderutilities:floor> * 6, [
    [<ore:plankWood>, <ore:plankWood>, null]
]);
recipes.addShaped(<enderutilities:floor:1> * 6, [
    [<ore:slabWood>, null, <ore:slabWood>]
]);

//能量桥谐振器/能量桥接收器/能量桥发送器
recipes.addShaped(<enderutilities:energy_bridge>, [
    [enderPlates[1], <gregtech:meta_item_1:218>, enderPlates[1]],
    [<ore:blockGlassColorless>, <enderutilities:enderpart:16>, <ore:blockGlassColorless>],
    [enderPlates[1], enderPlates[1], enderPlates[1]]
]);
recipes.addShaped(<enderutilities:energy_bridge:1>, [
    [enderPlates[2], <gregtech:meta_item_1:235>, enderPlates[2]],
    [<ore:blockGlassColorless>, <enderutilities:enderpart:17>, <ore:blockGlassColorless>],
    [enderPlates[2], enderPlates[2], enderPlates[2]]
]);
recipes.addShaped(<enderutilities:energy_bridge:2>, [
    [enderPlates[2], <gregtech:meta_item_1:220>, enderPlates[2]],
    [<ore:blockGlassColorless>, <enderutilities:enderpart:17>, <ore:blockGlassColorless>],
    [enderPlates[2], <ore:gemNetherStar>, enderPlates[2]]
]);

//末影灌注器
recipes.addShaped(<enderutilities:machine_1>, [
    [enderPlates[0], <gregtech:meta_item_1:217>, enderPlates[0]],
    [enderPlates[0], <ore:gemEnderPearl>, enderPlates[0]],
    [<ore:plateObsidian>, <enderutilities:endercapacitor>, <ore:plateObsidian>]
]);

//工具工作台
recipes.addShaped(<enderutilities:machine_1:1>, [
    [enderPlates[0], <gregtech:meta_item_1:22>, enderPlates[0]],
    [enderPlates[0], <ore:chest>, enderPlates[0]],
    [<ore:plateObsidian>, <ore:craftingTableWood>, <ore:plateObsidian>]
]);

//高级快速存放器
recipes.addShaped(<enderutilities:machine_1:3>, [
    [enderPlates[0], <gregtech:meta_item_1:218>, enderPlates[0]],
    [<gregtech:meta_item_1:188>, <enderutilities:quickstacker>, <gregtech:meta_item_1:188>],
    [enderPlates[0], <gregtech:meta_item_1:218>, enderPlates[0]]
]);

//大型存储包
recipes.addShaped(<enderutilities:msu:1>, [
    [<ore:circuitUhv>, <ore:plateDraconiumAwakened>, <ore:circuitUhv>],
    [<ore:plateDraconiumAwakened>, <gregtech:machine:994>, <ore:plateDraconiumAwakened>],
    [<ore:circuitUhv>, <gregtech:meta_item_1:209>, <ore:circuitUhv>]
]);

//定相方块/定相方块(反向)
recipes.addShaped(<enderutilities:phasing> * 4, [
    [<ore:stoneBricks>, <ore:ingotEnderAlloyBasic>, <ore:stoneBricks>],
    [<minecraft:comparator>, <ore:dyeBlack>, <minecraft:comparator>],
    [<ore:stoneBricks>, <ore:ingotEnderAlloyBasic>, <ore:stoneBricks>]
]);
recipes.addShaped(<enderutilities:phasing:1> * 4, [
    [<ore:stoneBricks>, <minecraft:comparator>, <ore:stoneBricks>],
    [<ore:ingotEnderAlloyBasic>, <ore:dyeBlack>, <ore:ingotEnderAlloyBasic>],
    [<ore:stoneBricks>, <minecraft:comparator>, <ore:stoneBricks>]
]);

//放音方块
recipes.addShaped(<enderutilities:sound_block>, [
    [enderPlates[0], <minecraft:noteblock>, enderPlates[0]],
    [<ore:screwGold>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "sonus"}]}), <ore:screwGold>],
    [enderPlates[0], <ore:screwGold>, enderPlates[0]]
]);

//记忆箱循环添加配方
for i in 0 to 3 {
    recipes.addShaped(<enderutilities:storage_0>.definition.makeStack(i), [
        [enderPlates[i], <enderutilities:enderpart:50>, enderPlates[i]],
        [enderPlates[i], <appliedenergistics2:drive>, enderPlates[i]],
        [<ore:crystalPureFluix>, circuits[i], <ore:crystalPureFluix>]
    ]);
}

//便捷箱循环添加配方
for i in 0 to 4 {
    recipes.addShaped(<enderutilities:storage_0>.definition.makeStack(3 + i), [
        [enderPlates[i], enderPlates[i], enderPlates[i]],
        [enderPlates[i], <appliedenergistics2:drive>, enderPlates[i]],
        [<ore:crystalPureFluix>, circuits[i], <ore:crystalPureFluix>]
    ]);
}

//杂物存储单元
recipes.addShaped(<enderutilities:storage_0:7>, [
    [enderPlates[0], <ore:screwIron>, enderPlates[0]],
    [<ore:screwIron>, <ironchest:iron_chest>, <ore:screwIron>],
    [enderPlates[0], <ore:screwIron>, enderPlates[0]]
]);
