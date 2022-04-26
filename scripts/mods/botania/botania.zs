/*
 * ZenScript by Hikari_Nova & Duantui & shang_jun & wuxinfashi & MCKLt
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
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.thaumcraft.Infusion;
import mods.botania.ElvenTrade;

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
    <botania:lens>,
    <botania:elementiumboots>,
    <botania:elementiumlegs>,
    <botania:elementiumchest>,
    <botania:elementiumhelm>,
    <botania:elementiumsword>,
    <botania:elementiumshears>,
    <botania:elementiumpick>,
    <botania:elementiumaxe>,
    <botania:elementiumshovel>,
    <botania:manasteelboots>,
    <botania:manasteellegs>,
    <botania:manasteelchest>,
    <botania:manasteelhelm>,
    <botania:manasteelsword>,
    <botania:manasteelshears>,
    <botania:manasteelpick>,
    <botania:manasteelaxe>,
    <botania:manasteelshovel>,
    <botania:terrasteelhelm>,
    <botania:terrasteelchest>,
    <botania:terrasteellegs>,
    <botania:terrasteelboots>,
    <botania:terraplate>
];

recipes.removeShaped(<botania:terrasteelhelmreveal>);

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
recipes.addShapeless(<gregtech:meta_block_compressed_2010>, [<botania:storage>]);
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

var mysticFlowerInput1 as IItemStack;
for i ,mysticFlowerInput in mysticFlowerInputs {
    var mysticFlowerOutput = mysticFlowerOutputs[i];
    if (i <= 7) {
        mysticFlowerInput1 = <botania:doubleflower1>.definition.makeStack(i);
    }
    else {
        mysticFlowerInput1 = <botania:doubleflower2>.definition.makeStack(i - 8);
    }


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
PureDaisy.addRecipe(<minecraft:stone>, <gregtech:meta_block_compressed_2010>, 30);

//熔融活石
//Melting.removeRecipe(<liquid:livingrock>, <botania:livingrock>);
Melting.addRecipe(<liquid:livingrock> * 144,<gregtech:meta_block_compressed_2010>, 600);

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
    .outputs(<gregtech:meta_dust:32160>)
    .chancedOutput(<gregtech:meta_dust:32160> * 2, 100, 1000)
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
    <ore:petalRed>, <gregtech:meta_dust:32001>, <gregtech:meta_dust:32160>]);

//符文祭坛
ArcaneWorkbench.registerShapedRecipe("runealtar", "", 20, [<aspect:aer>, <aspect:ordo>, <aspect:terra>, <aspect:ignis>],
    <botania:runealtar>, [
        [<gregtech:meta_stick:32160>, <gregtech:meta_plate:32160>, <gregtech:meta_stick:32160>],
        [<gregtech:meta_plate:32160>, <ore:blockLivingrock>, <gregtech:meta_plate:32160>],
        [<ore:manaDiamond>, <gregtech:meta_plate:32160>, <enderio:block_tank:1>]
    ]);

//符文
# 移除符文
for i in 0 to 16 {
    RuneAltar.removeRecipe(<botania:rune>.definition.makeStack(i));
}
# 水之符文
RuneAltar.addRecipe(<botania:rune> * 2,
    [<ore:plateManasteel>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), <ore:plateThaumium>,
    <gregtech:meta_lens:314>, <harvestcraft:well>], 10000);
# 火之符文
RuneAltar.addRecipe(<botania:rune:1> * 2, [
    <ore:plateManasteel>, <ore:plateThaumium>, <appliedenergistics2:tiny_tnt>,
    <witchery:wood_ash>, <gregtech:meta_lens:311>
], 10000);
# 地之符文
RuneAltar.addRecipe(<botania:rune:2> * 2, [
    <ore:plateManasteel>, <ore:plateThaumium>, <forestry:crafting_material:6>,
    <gregtech:meta_item_1:1001>, <gregtech:meta_lens:278>
], 10000);
# 风之符文
RuneAltar.addRecipe(<botania:rune:3> * 2, [
    <ore:plateManasteel>, <ore:plateThaumium>,
    <ore:feather>, <ore:livingwoodTwig>, <gregtech:meta_lens:314>
], 10000);
# 魔力符文
RuneAltar.addRecipe(<botania:rune:8> * 4, [
    <ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>,
    <ore:plateManasteel>, <ore:plateManasteel>, <ore:plateThaumium>
], 10000);
#春之符文
RuneAltar.addRecipe(<botania:rune:4>, [
    <botania:rune>, <botania:rune:1>, <botania:manaresource:18>,
    <appliedenergistics2:material:4>, <appliedenergistics2:material:4>, <appliedenergistics2:material:4>
], 20000);
#夏之符文
RuneAltar.addRecipe(<botania:rune:5>, [
    <botania:rune:3>, <botania:rune:2>, <botania:manaresource:18>,
    <minecraft:dye:3>, <minecraft:dye:3>, <minecraft:dye:3>
], 20000);
#秋之符文
RuneAltar.addRecipe(<botania:rune:6>, [
    <botania:rune:3>, <botania:rune:1>, <botania:manaresource:18>,
    <forestry:mulch>, <forestry:mulch>, <forestry:mulch>
], 20000);
#冬之符文
RuneAltar.addRecipe(<botania:rune:7>, [
    <botania:rune:2>, <botania:rune>, <botania:manaresource:18>,
    <harvestcraft:raisinsitem>, <harvestcraft:raisinsitem>, <harvestcraft:raisinsitem>
], 20000);

//水井
recipes.addShaped(<harvestcraft:well>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <minecraft:water_bucket>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
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

//速度透镜
laser_engraver.recipeBuilder()
    .inputs([<botania:lens>, <botania:rune:3>])
    .outputs([<botania:lens:1>])
    .duration(900)
    .EUt(786)
    .buildAndRegister();

//强度透镜
laser_engraver.recipeBuilder()
    .inputs([<botania:lens>, <botania:rune:1>])
    .outputs([<botania:lens:2>])
    .duration(900)
    .EUt(786)
    .buildAndRegister();

//磁化指环
//ArcaneWorkbench.registerShapedRecipe("<botania:magnetring>.withT")

//植物魔法系列护甲与工具
recipes.addShaped(<botania:elementiumboots>, [[<ore:plateElvenElementium>, null, <ore:plateElvenElementium>], [<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:elementiumlegs>, [[<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>],[<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>], [<ore:plateElvenElementium>, null, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:elementiumchest>, [[<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>],[<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>], [<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:elementiumhelm>, [[<ore:plateElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>],[<ore:plateElvenElementium>, <ore:gtceHardHammers>, <ore:plateElvenElementium>]]);
recipes.addShaped(<botania:manasteelboots>, [[<ore:plateManasteel>, null, <ore:plateManasteel>], [<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteellegs>, [[<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>],[<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>], [<ore:plateManasteel>, null, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteelhelm>, [[<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>],[<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteelchest>, [[<ore:plateManasteel>, <ore:gtceHardHammers>, <ore:plateManasteel>],[<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>], [<ore:plateManasteel>, <ore:plateManasteel>, <ore:plateManasteel>]]);
recipes.addShaped(<botania:manasteelshears>, [[<ore:plateManasteel>, <ore:screwManasteel>, <ore:plateManasteel>],[<ore:gtceHardHammers>, <ore:ringManasteel>, <ore:gtceFiles>], [<ore:livingwoodTwig>, <ore:gtceScrewdrivers>, <ore:livingwoodTwig>]]);
recipes.addShaped(<botania:manasteelshovel>, [[<ore:gtceFiles>, <ore:plateManasteel>, <ore:gtceHardHammers>],[null, <ore:livingwoodTwig>, null], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:manasteelaxe>, [[<ore:plateManasteel>, <ore:ingotManasteel>, <ore:gtceHardHammers>],[<ore:plateManasteel>, <ore:livingwoodTwig>, null], [<ore:gtceFiles>, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:manasteelpick>, [[<ore:ingotManasteel>, <ore:plateManasteel>, <ore:plateManasteel>],[<ore:gtceFiles>, <ore:livingwoodTwig>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:manasteelsword>, [[null, <ore:plateManasteel>, null],[<ore:gtceFiles>, <ore:plateManasteel>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumshears>, [[<ore:plateElvenElementium>, <ore:screwElvenElementium>, <ore:plateElvenElementium>],[<ore:gtceHardHammers>, <ore:ringElvenElementium>, <ore:gtceFiles>], [<ore:dreamwoodTwig>, <ore:gtceScrewdrivers>, <ore:dreamwoodTwig>]]);
recipes.addShaped(<botania:elementiumshovel>, [[<ore:gtceFiles>, <ore:plateElvenElementium>, <ore:gtceHardHammers>],[null, <ore:livingwoodTwig>, null], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumaxe>, [[<ore:plateElvenElementium>, <ore:ingotElvenElementium>, <ore:gtceHardHammers>],[<ore:plateElvenElementium>, <ore:livingwoodTwig>, null], [<ore:gtceFiles>, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumpick>, [[<ore:ingotElvenElementium>, <ore:plateElvenElementium>, <ore:plateElvenElementium>],[<ore:gtceFiles>, <ore:livingwoodTwig>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
recipes.addShaped(<botania:elementiumsword>, [[null, <ore:plateElvenElementium>, null],[<ore:gtceFiles>, <ore:plateElvenElementium>, <ore:gtceHardHammers>], [null, <ore:livingwoodTwig>, null]]);
Infusion.registerRecipe("terrasteelhelm", "", <botania:terrasteelhelm>, 8,
    [<aspect:herba> * 50, <aspect:terra> * 35, <aspect:praemunio> * 20, <aspect:motus> * 15, <aspect:sensus> * 15], <botania:manasteelhelm>,
    [<thaumcraft:salis_mundus>, <ore:runeSpringB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("terrasteelchest", "", <botania:terrasteelchest>, 8,
    [<aspect:herba> * 65, <aspect:terra> * 50, <aspect:praemunio> * 40, <aspect:motus> * 40], <botania:manasteelchest>,
    [<thaumcraft:salis_mundus>, <ore:runeSummerB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("terrasteellegs", "", <botania:terrasteellegs>, 8,
    [<aspect:herba> * 60, <aspect:terra> * 40, <aspect:praemunio> * 35, <aspect:motus> * 30], <botania:manasteellegs>,
    [<thaumcraft:salis_mundus>, <ore:runeAutumnB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("terrasteelboots", "", <botania:terrasteelboots>, 8,
    [<aspect:herba> * 40, <aspect:terra> * 25, <aspect:praemunio> * 15, <aspect:motus> * 15], <botania:manasteelboots>,
    [<thaumcraft:salis_mundus>, <ore:runeWinterB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);
Infusion.registerRecipe("<botania:terrasteelhelmreveal>", "", <botania:terrasteelhelmreveal>, 8,
    [<aspect:herba> * 50, <aspect:terra> * 35, <aspect:praemunio> * 20, <aspect:motus> * 15, <aspect:sensus> * 15], <botania:manasteelhelmreveal>,
    [<thaumcraft:salis_mundus>, <ore:runeSpringB>, <thaumcraft:salis_mundus>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>]);

//泰拉凝聚板

Infusion.registerRecipe("terraplate", "", <botania:terraplate>, 12,
    [<aspect:terra> * 64, <aspect:aqua> * 64, <aspect:ignis> * 64, <aspect:aer> * 64, <aspect:praecantatio> * 32, <aspect:herba> * 32], <ore:gemExquisiteGreenSapphire>,
    [<ore:runeWaterB>, <ore:blockManasteel>, <ore:runeFireB>, <ore:blockThaumium>, <ore:runeEarthB>, <ore:blockLapis>, <ore:runeAirB>, <ore:runeManaB>]);

//源质钢锭
ElvenTrade.removeRecipe(<botania:manaresource:7>);

//蕴魔生物质溶液
chemical_reactor.recipeBuilder()
    .fluidInputs([<liquid:biomass>*1000, <liquid:liquid_mana>*1000])
    .fluidOutputs([<liquid:enchanted_biomass_liquid>* 1000])
    .duration(300)
    .EUt(1182)
    .buildAndRegister();

//凝矿兰
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "orechid"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "orechid"}), 
    [<botania:rune:4>, <botania:rune:5>, <ore:petalGray>, <ore:petalGray>,
    <ore:petalYellow>, <ore:petalGreen>, <ore:petalRed>, <ore:dustManasteel>,
    <botania:livingrock>]);

///Mana温室反应仪配方
//IIngredient翻倍
function multiIIngredient(input as IIngredient[], number as int) as IIngredient[] {
    var new_input as IIngredient[] = [];
    for index, i_Ingredient in input {
        new_input += i_Ingredient;
    }
    for i in 0 to new_input.length {
        new_input[i] = new_input[i] * (number* new_input[i].amount);
    }

    return new_input;
}
//批量无流体添加配方
function addItemRecipes(input as IIngredient[], not_consumable as IIngredient[], 
    mana_need as int, extra_fluid as ILiquidStack[], output as IIngredient[], times as int, eu_tick as int) as void {
        val output_raw = output;
        val multiOutputs as IIngredient[] = multiIIngredient(output_raw, 2);
        greenhouse.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens>)
            .fluidInputs(<liquid:liquid_mana>*mana_need)
            .outputs(output_raw)
            .duration(times)
            .EUt(eu_tick)
            .buildAndRegister();
        greenhouse.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens:1>)
            .fluidInputs(<liquid:liquid_mana>*mana_need)
            .fluidInputs(extra_fluid)
            .fluidOutputs(<liquid:distilled_water>*(mana_need/10))
            .outputs(output_raw)
            .duration(times/2)
            .EUt(eu_tick*2)
            .buildAndRegister();
        greenhouse.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens:2>)
            .fluidInputs(<liquid:liquid_mana>*mana_need)
            .fluidInputs(extra_fluid)
            .fluidOutputs(<liquid:distilled_water>*(mana_need/10))
            .outputs(multiOutputs)
            .duration(times)
            .EUt(eu_tick*2)
            .buildAndRegister();
        greenhouse.recipeBuilder()
            .inputs(input)
            .notConsumable(not_consumable)
            .notConsumable(<botania:lens:2>.withTag({compositeLens: {id: "botania:lens", Count: 1 as byte, tag: {}, Damage: 1 as short}}))
            .fluidInputs(<liquid:liquid_mana>*mana_need)
            .fluidInputs(extra_fluid)
            .fluidOutputs(<liquid:distilled_water>*(mana_need/10))
            .outputs(multiOutputs)
            .duration(times/2)
            .EUt(eu_tick*2)
            .buildAndRegister();
    }  
//黏土花
addItemRecipes([<ore:sand>*1], [<botania:specialflower>.withTag({type: "clayconia"})], 
    250, [<liquid:enchanted_biomass_liquid>*50], [<minecraft:clay_ball>*2], 32, 192);
//白雏菊
var puredaisyInputs as IIngredient[][] = [
    [<minecraft:stone>],
    [<minecraft:netherrack>],
    [<thaumcraft:log_greatwood>],
    [<minecraft:soul_sand>],
    [<ore:blockIce>],
    [<botania:blazeblock>],
    [<minecraft:sapling>]
];
var puredaisyOutputs as IIngredient[][] = [
    [<botania:livingrock>],
    [<minecraft:cobblestone>],
    [<botania:livingwood>],
    [<minecraft:sand>],
    [<minecraft:packed_ice>],
    [<minecraft:obsidian>],
    [<thaumcraft:sapling_greatwood>]
];
for i in 0 to puredaisyOutputs.length {
    addItemRecipes(puredaisyInputs[i], [<botania:specialflower>.withTag({type: "puredaisy"})],
        250, [<liquid:enchanted_biomass_liquid>*50], puredaisyOutputs[i], 64, 192);
}
//凝矿兰
addItemRecipes([<botania:livingrock>*64], [<botania:specialflower>.withTag({type: "orechid"}), 
    <gregtech:meta_item_1:461>.withTag({Configuration: 0})], 5000, [<liquid:enchanted_biomass_liquid>*200], 
    [<minecraft:coal_ore>*23, <gregtech:ore_tin_0>*6, <gregtech:ore_copper_0>*8, <minecraft:stone>*27], 
    1500, 512);
addItemRecipes([<botania:livingrock>*64], [<botania:specialflower>.withTag({type: "orechid"}),
    <gregtech:meta_item_1:461>.withTag({Configuration: 1})], 5000, [<liquid:enchanted_biomass_liquid>*200], 
    [<minecraft:iron_ore>*12, <minecraft:redstone_ore>*12, <minecraft:gold_ore>*5, <minecraft:stone>*29], 
    1500, 512);
addItemRecipes([<botania:livingrock>*64], [<botania:specialflower>.withTag({type: "orechid"}),
    <gregtech:meta_item_1:461>.withTag({Configuration: 2})], 5000, [<liquid:enchanted_biomass_liquid>*200], 
    [<gregtech:ore_aluminium_0>*5, <minecraft:lapis_ore>*3, <gregtech:ore_silver_0>*6, <minecraft:stone>*50], 
    1500, 512);
