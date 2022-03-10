/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为铁箱子内容
*/

recipes.removeByMod("ironchest");

//木 -- > 铜
recipes.addShaped(<ironchest:wood_copper_chest_upgrade>, [
        [<ore:stickWood>, <ore:plateCopper>, <ore:stickWood>],
        [<ore:plateCopper>, <actuallyadditions:block_misc:4>, <ore:plateCopper>],
        [<ore:stickWood>, <ore:plateCopper>, <ore:stickWood>]
    ]);
//木 -- > 铁
recipes.addShaped(<ironchest:wood_iron_chest_upgrade>, [
        [<ore:stickWood>, <ore:plateIron>, <ore:stickWood>],
        [<ore:plateIron>, <actuallyadditions:block_misc:4>, <ore:plateIron>],
        [<ore:stickWood>, <ore:plateIron>, <ore:stickWood>]
    ]);
//铜 --> 金
recipes.addShaped(<ironchest:copper_iron_chest_upgrade>, [
        [<ore:screwBronze>, <ore:screwBronze>, <ore:screwBronze>],
        [<ore:plateIron>, <ore:plateCopper>, <ore:plateIron>],
        [<ore:screwBronze>, <ore:screwBronze>, <ore:screwBronze>]
    ]);
//铁 --> 金
recipes.addShaped(<ironchest:iron_gold_chest_upgrade>, [
        [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>],
        [<ore:plateGold>, <ore:plateIron>, <ore:plateGold>],
        [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>]
    ]);
//金 --> 钻石
recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [
        [<ore:screwGold>, <ore:screwGold>, <ore:screwGold>],
        [<ore:plateDiamond>, <ore:plateGold>, <ore:plateDiamond>],
        [<ore:screwGold>, <ore:screwGold>, <ore:screwGold>]
    ]);
//金 --> 水晶
recipes.addShaped(<ironchest:diamond_crystal_chest_upgrade>, [
        [<ore:screwDiamond>, <ore:plateGlass>, <ore:screwDiamond>],
        [<ore:plateGlass>, <ore:plateObsidian>, <ore:plateGlass>],
        [<ore:screwDiamond>, <ore:plateGlass>, <ore:screwDiamond>]
    ]);
//金 --> 黑曜石
recipes.addShaped(<ironchest:diamond_obsidian_chest_upgrade>, [
        [<ore:screwDiamond>, <ore:plateObsidian>, <ore:screwDiamond>],
        [<ore:plateObsidian>, <ore:plateGlass>, <ore:plateObsidian>],
        [<ore:screwDiamond>, <ore:plateObsidian>, <ore:screwDiamond>]
    ]);
//铁
recipes.addShaped(<ironchest:iron_chest>, [
        [<ore:screwBronze>, <ore:screwBronze>, <ore:screwBronze>],
        [<ore:plateIron>, <ironchest:iron_chest:3>, <ore:plateIron>],
        [<ore:screwBronze>, <ore:screwBronze>, <ore:screwBronze>]
    ]);
recipes.addShaped(<ironchest:iron_chest>, [
        [<minecraft:stick>, <ore:plateIron>, <minecraft:stick>],
        [<ore:plateIron>, <minecraft:chest>, <ore:plateIron>],
        [<minecraft:stick>, <ore:plateIron>, <minecraft:stick>]
    ]);
//金
recipes.addShaped(<ironchest:iron_chest:1>, [
        [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>],
        [<ore:plateGold>, <ironchest:iron_chest>, <ore:plateGold>],
        [<ore:screwIron>, <ore:plateGold>, <ore:screwIron>]
    ]);
recipes.addShaped(<ironchest:iron_chest:1>, [
        [<ore:screwSilver>, <ore:screwSilver>, <ore:screwSilver>],
        [<ore:plateGold>, <ironchest:iron_chest:4>, <ore:plateGold>],
        [<ore:screwSilver>, <ore:screwSilver>, <ore:screwSilver>]
    ]);
//钻石
recipes.addShaped(<ironchest:iron_chest:2>, [
        [<ore:screwSilver>, <ore:plateDiamond>, <ore:screwSilver>],
        [<ore:plateDiamond>, <ironchest:iron_chest:4>, <ore:plateDiamond>],
        [<ore:screwSilver>, <ore:plateDiamond>, <ore:screwSilver>]
    ]);
recipes.addShaped(<ironchest:iron_chest:2>, [
        [<ore:screwGold>, <ore:screwGold>, <ore:screwGold>],
        [<ore:plateDiamond>, <ironchest:iron_chest:1>, <ore:plateDiamond>],
        [<ore:screwGold>, <ore:screwGold>, <ore:screwGold>]
    ]);
//铜
recipes.addShaped(<ironchest:iron_chest:3>, [
        [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
        [<ore:plateCopper>, <minecraft:chest>, <ore:plateCopper>],
        [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
    ]);
//银
recipes.addShaped(<ironchest:iron_chest:4>, [
        [<ore:screwBronze>, <ore:plateSilver>, <ore:screwBronze>],
        [<ore:plateSilver>, <ironchest:iron_chest:3>, <ore:plateSilver>],
        [<ore:screwBronze>, <ore:plateSilver>, <ore:screwBronze>]
    ]);
//水晶
recipes.addShaped(<ironchest:iron_chest:5>, [
        [<ore:screwDiamond>, <ore:plateGlass>, <ore:screwDiamond>],
        [<ore:plateGlass>, <ironchest:iron_chest:2>, <ore:plateGlass>],
        [<ore:screwDiamond>, <ore:plateGlass>, <ore:screwDiamond>]
    ]);
//黑曜石
recipes.addShaped(<ironchest:iron_chest:6>, [
        [<ore:screwDiamond>, <ore:plateObsidian>, <ore:screwDiamond>],
        [<ore:plateObsidian>, <ironchest:iron_chest:2>, <ore:plateObsidian>],
        [<ore:screwDiamond>, <ore:plateObsidian>, <ore:screwDiamond>]
    ]);
