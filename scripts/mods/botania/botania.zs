//
<botania:lexicon>.withTag({}).addTooltip("§a这本书散发着花香");
<botania:lexicon>.withTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}).addTooltip("§a似乎变得更高级了");
<botania:lexicon>.withTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}).addTooltip("§0不就是多了金边吗()");
<botania:specialflower>.withTag({type: "asgardandelion"}).addTooltip("§a这多花似乎被注入了神的力量,它的魔力深不可测");
<botania:dice>.withTag({soulbindUUID: "1e180fc3-4971-3dfa-ae57-ed8113ce2c4e"}).addTooltip("§a命运即将呈现");
<botania:cosmetic:32>.withTag({}).addTooltip("§0对8");
<botania:odinring>.withTag({soulbindUUID: "1e180fc3-4971-3dfa-ae57-ed8113ce2c4e"}).addTooltip("§5传说中的戒指");
<botania:manaresource:4>.addTooltip("§a盖亚破碎的灵魂将会引导你");
<botania:manaresource:14>.addTooltip("§a越发强烈的灵魂");
<botania:terrapick>.withTag({mana: 2147483646}).addTooltip("§5你的努力得到了泰拉的认可,你将屹立于大地之上");
<botania:holycloak>.withTag({}).addTooltip("§5盖亚将会庇佑你");
<botania:manaresource:5>.addTooltip("§a泰拉魂之上......");
<botania:pool:1>.addTooltip("§5盖亚完全认可了你......");
<botania:bloodpendant>.withTag({}).addTooltip("§4这是谁的项链呢?");
//盖亚水晶
recipes.remove(<botania:pylon:2>);
recipes.addShaped(<botania:pylon:2>,
[[<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>],
 [<botania:bifrostperm>,<botania:pylon>,<botania:bifrostperm>],
 [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>]]);
 //
