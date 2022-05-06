/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为杂项移除物品内容
*/

#priority 350

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

//移除配方和隐藏 JEI
var items as IItemStack[] = [
    <yabba:antibarrel>,#奇异桶
    <actuallyadditions:block_fermenting_barrel>,#蒸馏桶
    <actuallyadditions:block_miner>,#垂直挖矿机
    <actuallyadditions:block_ranged_collector>,#物品收集器
    <actuallyadditions:block_furnace_solar>,#太阳能板
    <actuallyadditions:block_coal_generator>,#煤炭发电机
    <actuallyadditions:block_oil_generator>,#原油发电机
    <actuallyadditions:block_heat_collector>,#热能发电机
    <actuallyadditions:block_leaf_generator>,#咀叶发电机
    <actuallyadditions:item_drill:*>,#手钻
    <rftools:endergenic>,#RFTools
    <rftools:pearl_injector>,
    <rftools:ender_monitor>,
    <rftools:shape_card:2>,
    <rftools:shape_card:3>,
    <rftools:shape_card:4>,
    <rftools:shape_card:5>,
    <rftools:shape_card:6>,
    <rftools:shape_card:7>,
    <rftools:coalgenerator>,
    <rftools:shield_block4>,
    <rftools:spawner>,
    <rftools:elevator>,
    <rftools:storage_scanner>,
    <advancedrocketry:arcfurnace>,#电弧高炉
    <advancedrocketry:blastbrick>,#隔热砖
    <enderio:block_combustion_generator>,#燃烧发电机
    <enderio:block_enhanced_combustion_generator>,#强化燃烧发电机
    <enderio:block_simple_stirling_generator>,#简易斯特林发电机
    <enderio:block_stirling_generator>,#斯特林发电机
    <enderio:block_zombie_generator>,#僵尸发电机
    <enderio:block_franken_zombie_generator>,#人造僵尸发电机
    <enderio:block_ender_generator>,#末影发电机
    <actuallyadditions:item_disenchanting_lens>,#祛魔透镜
    <libvulpes:coalgenerator>,#燃煤发电机
    <avaritiaddons:infinity_compressor>,#无尽压缩机
    <actuallyadditions:block_grinder>,#磨粉机
    <actuallyadditions:block_grinder_double>,#两仓磨粉机
    <advancedrocketry:rollingmachine>,#卷板机
    <thermalexpansion:device:10>,#公式处理器
    <advancedrocketry:productrod:0>,
    <advancedrocketry:productrod:1>,
    <thermalexpansion:augment:401>,#通量维修复原
    <theoneprobe:probenote>,#TOP 阅读指南
    <appliedenergistics2:grindstone>,#AE2 石英磨具
    <appliedenergistics2:crank>#AE2 木质曲柄

];

for i, item in items {
    recipes.remove(item);
    JEI.removeAndHide(item,true);
}

//仅移除配方
var recipeItems as IItemStack[] = [
    <thaumcraft:plate>,#TC6 黄铜板
    <thaumcraft:plate:1>,#TC6 铁板
    <thaumcraft:plate:2>,#TC6 神秘板
    <thaumcraft:plate:3>,#TC6 虚空金属板
    <enderio:block_solar_panel:4>,#晶化光伏板
    <enderio:block_solar_panel:5>,#旋律光伏板
    <enderio:block_solar_panel:6>,#恒星光伏板
    <deepmoblearning:data_model_dragon>,#龙数据模型
    <astralsorcery:blockblackmarble> * 8,#熏黑大理石
    <thermalfoundation:material:103> * 4,#末影粉
    <thermalfoundation:material:101> * 4,#信素粉
];

for i, item in recipeItems {
    recipes.remove(item);
}

//仅隐藏 JEI
var jeiItems as IItemStack[] = [
    <libvulpes:ore0:0>,#AR 双锂
    <libvulpes:ore0:4>,#AR 铜
    <libvulpes:ore0:5>,#AR 锡
    <libvulpes:ore0:8>,#AR 金红石
    <libvulpes:ore0:9>,#AR 铝
    <libvulpes:ore0:10>,#AR 铱
    <thermalfoundation:ore:0>,#TE 铜
    <thermalfoundation:ore:1>,#TE 锡
    <thermalfoundation:ore:2>,#TE 银
    <thermalfoundation:ore:3>,#TE 铅
    <thermalfoundation:ore:4>,#TE 铝
    <thermalfoundation:ore:5>,#TE 镍
    <thermalfoundation:ore:6>,#TE 铂
    <thermalfoundation:ore:7>,#TE 铱
    <ironchest:iron_shulker_box_white:*>,#潜影盒
    <ironchest:iron_shulker_box_orange:*>,
    <ironchest:iron_shulker_box_magenta:*>,
    <ironchest:iron_shulker_box_light_blue:*>,
    <ironchest:iron_shulker_box_yellow:*>,
    <ironchest:iron_shulker_box_lime:*>,
    <ironchest:iron_shulker_box_pink:*>,
    <ironchest:iron_shulker_box_gray:*>,
    <ironchest:iron_shulker_box_silver:*>,
    <ironchest:iron_shulker_box_cyan:*>,
    <ironchest:iron_shulker_box_purple:*>,
    <ironchest:iron_shulker_box_blue:*>,
    <ironchest:iron_shulker_box_brown:*>,
    <ironchest:iron_shulker_box_green:*>,
    <ironchest:iron_shulker_box_red:*>,
    <ironchest:iron_shulker_box_black:*>,
    <ironchest:iron_gold_shulker_upgrade>,#潜影盒升级
    <ironchest:gold_diamond_shulker_upgrade>,
    <ironchest:copper_silver_shulker_upgrade>,
    <ironchest:silver_gold_shulker_upgrade>,
    <ironchest:copper_iron_shulker_upgrade>,
    <ironchest:diamond_crystal_shulker_upgrade>,
    <ironchest:vanilla_iron_shulker_upgrade>,
    <ironchest:vanilla_copper_shulker_upgrade>,
    <ironchest:diamond_obsidian_shulker_upgrade>,
    <ironchest:iron_chest:7>,#泥箱子 9000!
    <appliedenergistics2:quartz_ore>,#赛特斯石英矿石
    <avaritia:singularity:*>,#无尽贪婪奇点
    <enderutilities:enderpart:0>,#基础末影合金
    <enderutilities:enderpart:1>,#增强
    <enderutilities:enderpart:2>,#高级
    <enderutilities:chairwand>,
    <enderutilities:machine_1:2>,
    <enderutilities:molecular_exciter>,
    <draconicevolution:generator>,#DE 发电机
    <draconicadditions:chaotic_armor_generator>,
    <draconicadditions:armor_generator>,
    <advancedrocketry:solargenerator>,#AR 太阳能板
    <appliedenergistics2:material:2>,#AE2 赛特斯石英粉
    <appliedenergistics2:material:3>,#AE2 石英粉
    <appliedenergistics2:material:46>,#AE2 末影粉
    <enderutilities:enderpart:20>,#EnU 末影灌注棍
    <enderutilities:enderpart:70>,#储物桶升级
    <enderutilities:enderpart:71>,#储物桶升级
    <enderutilities:enderpart:72>,#储物桶升级
    <enderutilities:enderpart:73>,#储物桶升级
    <enderutilities:msu:0>,#EnU 大型存储单元
    <enderio:item_material:5>#EIO 硅

];

for i, item in jeiItems {
    JEI.removeAndHide(item,false);
}

//删除星辉锭配方
furnace.remove(<astralsorcery:itemcraftingcomponent:1>);
