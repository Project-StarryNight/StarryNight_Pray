/*
 * ZenScript by Hikari_Nova & Duantui & shang_jun & wuxinfashi
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为植物魔法内容
*/

import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botaniatweaks.Agglomeration;
import mods.gregtech.recipe.RecipeMap;
import mods.tconstruct.Melting;
import mods.thaumcraft.ArcaneWorkbench;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;


//待移除数组
var items as IItemStack[] = [
    <botania:petal>,
    <botania:petal:1>,
    <botania:petal:2>,
    <botania:petal:3>,
    <botania:petal:4>,
    <botania:petal:5>,
    <botania:petal:6>,
    <botania:petal:7>,
    <botania:petal:8>,
    <botania:petal:9>,
    <botania:petal:10>,
    <botania:petal:11>,
    <botania:petal:12>,
    <botania:petal:13>,
    <botania:petal:14>,
    <botania:petal:15>,
    <botania:fertilizer>,
    <botania:pestleandmortar>,
    <botania:altar>,
    <botania:pool>,
    <botania:pool:2>,
    <botania:manaresource:3>,
    <botania:lexicon>,
    <botania:spreader>,
    <botania:runealtar>,
    <harvestcraft:well>,
    <botania:terraplate>,
    <botania:lens>
];

//循环移除
for i, item in items {
    recipes.remove(item);
}

//盖亚水晶
recipes.remove(<botania:pylon:2>);
recipes.addShaped(<botania:pylon:2>,[
    [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>],
    [<botania:bifrostperm>,<botania:pylon>,<botania:bifrostperm>],
    [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>]]);

//炼金催化器
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>,[
    [<ore:plateLivingrock>,<ore:ingotGold>,<ore:plateLivingrock>],
    [<enderio:block_tank>,<botania:manaresource:1>,<minecraft:brewing_stand>],
    [<ore:plateLivingrock>,<ore:ingotGold>,<ore:plateLivingrock>]]);

//污血项链
recipes.remove(<botania:bloodpendant>);
recipes.addShaped(<botania:bloodpendant>,[
    [null,<minecraft:prismarine_shard>,<bloodarsenal:base_item:2>],
    [<minecraft:prismarine_shard>,<minecraft:ghast_tear>,<minecraft:prismarine_shard>],
    [<botania:manaresource:2>,<minecraft:prismarine_shard>,null]]);

//魔力钢锭
ManaInfusion.removeRecipe(<botania:manaresource>);
//ManaInfusion.addInfusion(<botania:manaresource>,<gregtech:meta_ingot:324>,3000);
ManaInfusion.removeRecipe(<botania:storage>);
//ManaInfusion.addInfusion(<botania:storage>,<gregtech:meta_block_compressed_20:4>,27000);
recipes.addShapeless(<gregtech:meta_ingot:32161>, [<botania:manaresource>]);
recipes.addShapeless(<gregtech:meta_block_compressed_1250:1>, [<botania:storage>]);
ManaInfusion.addInfusion(<gregtech:meta_dust:32161>, <ore:dustSteel>, 3000);

//魔力钻石
ManaInfusion.removeRecipe(<botania:storage:3>);
ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>,<ore:gemFlawlessDiamond>,10000);
ManaInfusion.addInfusion(<botania:manaresource:2> * 2,<ore:gemExquisiteDiamond>,7500);
ManaInfusion.addInfusion(<botania:manaresource:2>,<ore:crystalDiamantine>,20000);
ManaInfusion.addInfusion(<botania:manaresource:2>,<actuallyadditions:item_crystal_empowered:2>,15000);

//神秘花变花瓣
var mysticFlowerInputs as IItemStack[] = [
    <botania:flower>,
    <botania:flower:1>,
    <botania:flower:2>,
    <botania:flower:3>,
    <botania:flower:4>,
    <botania:flower:5>,
    <botania:flower:6>,
    <botania:flower:7>,
    <botania:flower:8>,
    <botania:flower:9>,
    <botania:flower:10>,
    <botania:flower:11>,
    <botania:flower:12>,
    <botania:flower:13>,
    <botania:flower:14>,
    <botania:flower:15>
];

var mysticFlowerOutputs as IItemStack[] = [
    <botania:petal>,
    <botania:petal:1>,
    <botania:petal:2>,
    <botania:petal:3>,
    <botania:petal:4>,
    <botania:petal:5>,
    <botania:petal:6>,
    <botania:petal:7>,
    <botania:petal:8>,
    <botania:petal:9>,
    <botania:petal:10>,
    <botania:petal:11>,
    <botania:petal:12>,
    <botania:petal:13>,
    <botania:petal:14>,
    <botania:petal:15>
];

for i ,mysticFlowerInput in mysticFlowerInputs {
    var mysticFlowerOutput = mysticFlowerOutputs[i];
    var mysticFlowerInput1 = <botania:doubleflower1>.definition.makeStack(i);

    centrifuge.recipeBuilder()
        .inputs(mysticFlowerInput)
        .fluidInputs([<liquid:sulfuric_gas> * 30])
        .outputs(mysticFlowerOutput * 2)
        .chancedOutput(<witchery:wispy_cotton>, 1000, 1000)
        .duration(100)
        .EUt(10)
        .buildAndRegister();

    centrifuge.recipeBuilder()
        .inputs(mysticFlowerInput1)
        .fluidInputs([<liquid:sulfuric_gas> * 30])
        .outputs(mysticFlowerOutput * 4)
        .chancedOutput(<witchery:wispy_cotton>, 1000, 1000)
        .duration(100)
        .EUt(10)
        .buildAndRegister();
}

//花肥
recipes.addShaped(<botania:fertilizer>, [
    [<gregtech:meta_item_1:1001>, <ore:dye>, <ore:dye>],
    [<ore:dye>, <ore:dye>, <ore:dustApatite>],
    [null, null, null]
]);

//杵和臼
recipes.addShapeless(<botania:pestleandmortar>,
    [<gregtech:meta_bolt:1617>, <minecraft:bowl>]);

//花药台
mixer.recipeBuilder()
    .inputs([
        <astralsorcery:blockmarble> * 5, <astralsorcery:blockmarble:2> * 1,
        <astralsorcery:blockmarbleslab> * 4, <botania:petal> * 3, <gregtech:meta_dust:32001> * 2
    ])
    .circuit(1)
    .outputs(<botania:altar>)
    .duration(600)
    .EUt(30)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([
        <astralsorcery:blockmarble> * 3, <astralsorcery:blockmarble:2> * 1,
        <astralsorcery:blockmarbleslab> * 2, <botania:petal> * 1
    ])
    .circuit(2)
    .outputs(<botania:altar>)
    .duration(300)
    .EUt(30)
    .buildAndRegister();

//白雏菊
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "puredaisy"}), [
    <botania:petal>, <botania:petal>, <botania:petal>, <botania:petal>,
    <gregtech:meta_dust:32001>, <gregtech:meta_item_1:127>
]);

//活石
PureDaisy.removeRecipe(<botania:livingrock>);

//活石块
alloy_smelter.findRecipe(28, [<metaitem:ingotLivingrock> * 9, <metaitem:shape.mold.block>], null).remove();
compressor.findRecipe(2, [<metaitem:ingotLivingrock> * 9], null).remove();
arc_furnace.findRecipe(30, [<metaitem:plateDenseLivingrock>], [<liquid:oxygen> * 882]).remove();
extruder.findRecipe(56, [<metaitem:ingotLivingrock> * 9, <metaitem:shape.extruder.block>], null).remove();
cutter.findRecipe(30, [<metaitem:blockLivingrock>], [<liquid:lubricant> * 18]).remove();
cutter.findRecipe(30, [<metaitem:blockLivingrock>], [<liquid:distilled_water> * 55]).remove();
cutter.findRecipe(30, [<metaitem:blockLivingrock>], [<liquid:water> * 73]).remove();
alloy_smelter.findRecipe(7, [<metaitem:blockLivingrock>, <metaitem:shape.mold.ingot>], null).remove();
arc_furnace.findRecipe(30, [<metaitem:blockLivingrock>], [<liquid:oxygen> * 98]).remove();
macerator.findRecipe(8, [<metaitem:blockLivingrock>], null).remove();
PureDaisy.addRecipe(<minecraft:stone>, <gregtech:meta_block_compressed_1250>, 30);

//熔融活石
//Melting.removeRecipe(<liquid:livingrock>, <botania:livingrock>);
Melting.addRecipe(<liquid:livingrock> * 144, <gregtech:meta_block_compressed_1250>, 600);

//稀释魔力池
assembler.recipeBuilder()
    .inputs([<botania:livingrock> * 3, <botania:livingrock0slab> * 2, <thaumcraft:salis_mundus> * 1])
    .outputs(<botania:pool:2>)
    .duration(600)
    .EUt(28)
    .buildAndRegister();

//活石粉
macerator.recipeBuilder()
    .inputs(<botania:livingrock>)
    .outputs(<gregtech:meta_dust:20000>)
    .chancedOutput(<gregtech:meta_dust:20000> * 2, 100, 1000)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

//宏伟之木树苗
PureDaisy.addRecipe(<minecraft:sapling>, <thaumcraft:sapling_greatwood>, 30);

//活木
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.addRecipe(<thaumcraft:log_greatwood>, <botania:livingwood>, 30);

//活木枝
lathe.recipeBuilder()
    .inputs(<botania:livingwood> * 2)
    .outputs(<botania:manaresource:3>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

//植物魔法手册
Apothecary.addRecipe(<botania:lexicon>, [<minecraft:book>, <ore:dustThaumium>, <botania:petal:*>, <botania:petal:*>]);

//魔力发射器
ArcaneWorkbench.registerShapedRecipe("spreader", "", 20, [<aspect:aer>, <aspect:ordo>, <aspect:terra>], 
    <botania:spreader>, [
        [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
        [<ore:plateGold>, <ore:plateLivingrock>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})],
        [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]
    ]);

//水绣球
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}), 
    [<ore:petalCyan>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalBlue>, <ore:dustMagic>]);

//魔力花
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "manastar"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "manastar"}), 
    [<ore:petalLightBlue>, <ore:petalLightBlue>, <ore:petalGreen>, <ore:petalRed>, <ore:dustMagic>]);

//魔力池
ArcaneWorkbench.registerShapedRecipe("pool", "", 20, [<aspect:aer>, <aspect:ordo>, <aspect:terra>],
    <botania:pool>, [
        [null, <botania:pool:2>, null],
        [<ore:plateLivingrock>, <ore:ingotThaumium>, <ore:plateLivingrock>],
        [null, <botania:pool:2>, null]
    ]);

//火红莲
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "endoflame"}),
    [<ore:petalBrown>, <ore:petalBrown>, <ore:petalLightGray>,
    <ore:petalRed>, <gregtech:meta_dust:32001>, <gregtech:meta_dust:20000>]);

//符文祭坛
ArcaneWorkbench.registerShapedRecipe("runealtar", "", 20, [<aspect:aer>, <aspect:ordo>, <aspect:terra>, <aspect:ignis>],
    <botania:runealtar>, [
        [<gregtech:meta_stick:20000>, <gregtech:meta_plate:20000>, <gregtech:meta_stick:20000>],
        [<gregtech:meta_plate:20000>, <ore:blockLivingrock>, <gregtech:meta_plate:20000>],
        [<ore:manaDiamond>, <gregtech:meta_plate:20000>, <enderio:block_tank:1>]
    ]);

//符文
# 移除符文
for i in 0 to 16 {
    RuneAltar.removeRecipe(<botania:rune>.definition.makeStack(i));
}
# 水之符文
RuneAltar.addRecipe(<botania:rune> * 2,
    [<ore:springManasteel>, <gregtech:meta_item_1:1001>, <ore:plateThaumium>,
    <gregtech:meta_lens:314>, <harvestcraft:well>], 10000);
# 火之符文
RuneAltar.addRecipe(<botania:rune:1> * 2, [
    <ore:gearSmallManasteel>, <ore:screwThaumium>, <appliedenergistics2:tiny_tnt>,
    <witchery:wood_ash>, <gregtech:meta_lens:311>
], 10000);
# 地之符文
RuneAltar.addRecipe(<botania:rune:2> * 2, [
    <ore:foilManasteel>, <ore:ringThaumium>, <forestry:crafting_material:6>,
    <enderio:item_material:11>, <gregtech:meta_lens:278>
], 10000);
# 风之符文
RuneAltar.addRecipe(<botania:rune:3> * 2, [
    <ore:screwManasteel>, <tconstruct:sharpening_kit>.withTag({Material: "thaumium"}),
    <ore:feather>, <ore:livingwoodTwig>, <gregtech:meta_lens:314>
], 10000);
# 魔力符文
RuneAltar.addRecipe(<botania:rune:8> * 4, [
    <ore:stickManasteel>, <ore:plateManasteel>, <ore:dustManasteel>,
    <ore:screwManasteel>, <ore:springSmallManasteel>, <ore:ringThaumium>
], 10000);

//水井
recipes.addShaped(<harvestcraft:well>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <enderio:block_tank>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

//泰拉凝聚板
ArcaneWorkbench.registerShapedRecipe("terraplate", "", 50, [<aspect:aer>, <aspect:ordo>, <aspect:terra>, <aspect:ignis>],
    <botania:terraplate>, [
        [<ore:blockLapis>, <bloodmagic:slate>, <ore:blockLapis>],
        [<botania:rune>, <botania:storage>, <botania:rune:1>],
        [<botania:rune:2>, <botania:rune:8>, <botania:rune:3>]
    ]);

//泰拉钢
Agglomeration.removeRecipe(<botania:manaresource:4>, [<botania:manaresource>, <botania:manaresource:2>, <botania:manaresource:1>]);
Agglomeration.addRecipe(<botania:manaresource:4>,
    [<ore:ingotManasteel>, <ore:ingotThaumium>, <ore:ingotAstralStarmetal>, <ore:ingotStainlessSteel>], 200000);

//魔力透镜
laser_engraver.recipeBuilder()
    .inputs([<ore:ingotManasteel> * 4, <ore:lensGlass> * 1])
    .outputs(<botania:lens>)
    .duration(900)
    .EUt(86)
    .buildAndRegister();

//磁化指环
//ArcaneWorkbench.registerShapedRecipe("<botania:magnetring>.withT")
