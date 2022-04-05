/*
 * ZenScript by Hikari_Nova & Duantui & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为植物魔法内容
*/

import mods.botania.ManaInfusion;
//添加Tooltip
<botania:lexicon>.addTooltip("§a这本书散发着花香");
<botania:lexicon>.withTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}).addTooltip("§a似乎变得更高级了");
<botania:lexicon>.withTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}).addTooltip("§0不就是多了金边吗()");
<botania:specialflower>.withTag({type: "asgardandelion"}).addTooltip("§a这多花似乎被注入了神的力量,它的魔力深不可测");
<botania:dice>.addTooltip("§a命运即将呈现");
<botania:cosmetic:32>.addTooltip("§0对8");
<botania:odinring>.addTooltip("§5传说中的戒指");
<botania:manaresource:4>.addTooltip("§a盖亚破碎的灵魂将会引导你");
<botania:manaresource:14>.addTooltip("§a越发强烈的灵魂");
<botania:terrapick>.withTag({mana: 2147483646}).addTooltip("§5你的努力得到了泰拉的认可,你将屹立于大地之上");
<botania:holycloak>.addTooltip("§5盖亚将会庇佑你");
<botania:manaresource:5>.addTooltip("§a泰拉魂之上......");
<botania:pool:1>.addTooltip("§5盖亚完全认可了你......");
<botania:bloodpendant>.addTooltip("§4这是谁的项链呢?");
//盖亚水晶
recipes.remove(<botania:pylon:2>);
recipes.addShaped(<botania:pylon:2>,
[[<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>],
 [<botania:bifrostperm>,<botania:pylon>,<botania:bifrostperm>],
 [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>]]);
//炼金催化器
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>,
[[<botania:livingrock>,<ore:ingotGold>,<botania:livingrock>],
 [<enderio:block_tank>,<botania:manaresource:1>,<minecraft:brewing_stand>],
 [<botania:livingrock>,<ore:ingotGold>,<botania:livingrock>]]);
//污血项链
recipes.remove(<botania:bloodpendant>;
recipes.addShaped(<botania:bloodpendant>,
[[null,<minecraft:prismarine_shard>,<bloodarsenal:base_item:2>],
 [<minecraft:prismarine_shard>,<minecraft:ghast_tear>,<minecraft:prismarine_shard>],
 [<botania:manaresource:2>,<minecraft:prismarine_shard>,null]]);
//魔力钢锭
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>,<gregtech:meta_ingot:324>,3000);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:storage>,<gregtech:meta_block_compressed_20:4>,27000);
//魔力钻石
mods.botania.ManaInfusion.removeRecipe(<botania:storage:3>);
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:2>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:2>,<gregtech:meta_dust:276>,10000);
//魔力珍珠
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:1>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:1>,<gregtech:meta_dust:416>,6000);
recipes.addShaped(<botania:pylon:2>,[
    [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>],
    [<botania:bifrostperm>,<botania:pylon>,<botania:bifrostperm>],
    [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>]
]);
