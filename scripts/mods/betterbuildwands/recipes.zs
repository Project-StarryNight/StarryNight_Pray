/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为更好的建筑手杖内容
*/

import crafttweaker.item.IItemStack;

var wands as IItemStack[] = [
    <betterbuilderswands:wanddiamond>,
    <betterbuilderswands:wandunbreakable:12>,
    <betterbuilderswands:wandunbreakable:13>,
    <betterbuilderswands:wandunbreakable:14>
];
for i, wand in wands {
    var wand = wands[i];
    recipes.remove(wand);
}

//钻石手杖
recipes.addShaped(<betterbuilderswands:wanddiamond>, [[null, null, <ore:gemExquisiteDiamond>],
    [null, <ore:stickWood>, null],
    [<ore:stickWood>, null, null]
    ]);

//不毁手杖
recipes.addShaped(<betterbuilderswands:wandunbreakable:12>, [[null, null, <actuallyadditions:item_misc:19>],
    [null, <ore:stickWood>, null],
    [<ore:stickWood>, null, null]
    ]);

//不毁手杖-Lv2
recipes.addShaped(<betterbuilderswands:wandunbreakable:13>, [[null, null, <gregtech:meta_item_1:283>],
    [null, <betterbuilderswands:wandunbreakable:12>, null],
    [<ore:stickWood>, null, null]
    ]);

//不毁手杖-Lv3
recipes.addShaped(<betterbuilderswands:wandunbreakable:14>, [[null, null, <gregtech:meta_item_1:283>],
    [null, <betterbuilderswands:wandunbreakable:13>, null],
    [<ore:stickWood>, null, null]
    ]);
