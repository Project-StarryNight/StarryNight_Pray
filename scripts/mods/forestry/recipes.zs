/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为林业内容
*/

import crafttweaker.item.IItemStack;
import mods.forestry.Carpenter;

//电烙铁
Carpenter.removeRecipe(<forestry:soldering_iron>);
recipes.addShaped(<forestry:soldering_iron>, [
    [null, <ore:plateIron>, null],
    [<ore:plateIron>, null, <ore:plateIron>],
    [null, null, <ore:stickIron>]
]);

//伐木机，收割机，沼泽，加湿器，榨汁机，发酵机，蒸馏器，离心机，装瓶机，木工机，热电子加工台
# 移除
var machines as IItemStack[] = [
    <forestry:arboretum>,
    <forestry:farm_crops>,
    <forestry:farm_mushroom>,
    <forestry:farm_gourd>,
    <forestry:farm_nether>,
    <forestry:farm_ender>,
    <forestry:peat_bog>,
    <forestry:moistener>,
    <forestry:squeezer>,
    <forestry:fermenter>,
    <forestry:still>,
    <forestry:centrifuge>,
    <forestry:bottler>,
    <forestry:carpenter>,
    <forestry:database>,
    <forestry:analyzer>,
    <forestry:rainmaker>,
    <forestry:fabricator>
];

for i, machine in machines {
    var machine = machines[i];
    recipes.remove(machine);
}

# 添加
    recipes.addShaped(<forestry:peat_bog>, [
        [<forestry:thermionic_tubes:6>,<gregtech:meta_item_1:127>, <forestry:thermionic_tubes:6>],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],
        [<gregtech:meta_item_1:187>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:187>]
    ]);
    recipes.addShaped(<forestry:farm_ender>, [
        [<forestry:thermionic_tubes:12>, <gregtech:meta_item_1:127>, <forestry:thermionic_tubes:12>],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],
        [<gregtech:meta_item_1:187>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:187>]
    ]);
    recipes.addShaped(<forestry:farm_nether>, [
        [<forestry:thermionic_tubes:7>, <gregtech:meta_item_1:127>, <forestry:thermionic_tubes:7>],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],
        [<gregtech:meta_item_1:187>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:187>]
    ]);
    recipes.addShaped(<forestry:farm_gourd>, [
        [<forestry:thermionic_tubes:11>, <gregtech:meta_item_1:127>, <forestry:thermionic_tubes:11>],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],
        [<gregtech:meta_item_1:187>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:187>]
    ]);
    recipes.addShaped(<forestry:farm_mushroom>, [
        [<forestry:thermionic_tubes:10>, <gregtech:meta_item_1:127>, <forestry:thermionic_tubes:10>],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],
        [<gregtech:meta_item_1:187>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:187>]
    ]);
    recipes.addShaped(<forestry:farm_crops>, [
        [<forestry:thermionic_tubes:2>, <gregtech:meta_item_1:127>, <forestry:thermionic_tubes:2>],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],
        [<gregtech:meta_item_1:187>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:187>]
    ]);
    recipes.addShaped(<forestry:arboretum>, [
        [<ore:blockGlassColorless>, <gregtech:meta_item_1:127>, <ore:blockGlassColorless>],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>],
        [<gregtech:meta_item_1:187>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:187>]
    ]);
    recipes.addShaped(<forestry:fabricator>, [
        [<ore:plateBronze>, <ore:workbench>, <ore:plateBronze>],
        [<ore:plateBronze>, <gregtech:machine:986>, <ore:plateBronze>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:carpenter>, [
        [<gregtech:meta_plate:1617>, <gregtech:meta_plate:1617>, <gregtech:meta_plate:1617>],
        [<gregtech:meta_item_1:187>, <gregtech:machine:986>, <gregtech:meta_item_1:187>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:bottler>, [
        [<gregtech:meta_plate:1617>, <gregtech:meta_item_1:142>, <gregtech:meta_plate:1617>],
        [<forestry:can>, <gregtech:machine:986>, <forestry:can>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:centrifuge>, [
        [<gregtech:meta_plate:1617>, <gregtech:meta_plate:1617>, <gregtech:meta_plate:1617>],
        [<gregtech:meta_item_1:127>, <gregtech:machine:986>, <gregtech:meta_item_1:127>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:still>, [
        [<ore:blockGlassColorless>, <gregtech:meta_spring:25>, <ore:blockGlassColorless>],
        [<ore:cableGtSingleTin>, <gregtech:machine:986>, <ore:cableGtSingleTin>],
        [<ore:circuitLv>, <gregtech:meta_item_1:142>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:fermenter>, [
        [<ore:blockGlassColorless>, <gregtech:meta_item_1:142>, <ore:blockGlassColorless>],
        [<ore:cableGtSingleTin>, <gregtech:machine:986>, <ore:cableGtSingleTin>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:squeezer>, [
        [<gregtech:meta_item_1:172>, <minecraft:bucket>, <gregtech:meta_item_1:172>],
        [<gregtech:meta_plate:1617>, <gregtech:machine:986>, <gregtech:meta_plate:1617>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:moistener>, [
        [<gregtech:meta_plate:1617>, <gregtech:meta_item_1:142>, <gregtech:meta_plate:1617>],
        [<ore:screwBronze>, <gregtech:machine:986>, <ore:screwBronze>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:fermenter>, [
        [<ore:blockGlassColorless>, <gregtech:meta_item_1:142>, <ore:blockGlassColorless>],
        [<ore:cableGtSingleTin>, <gregtech:machine:986>, <ore:cableGtSingleTin>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:moistener>, [
        [<gregtech:meta_plate:1617>, <gregtech:meta_item_1:142>, <gregtech:meta_plate:1617>],
        [<ore:screwBronze>, <gregtech:machine:986>, <ore:screwBronze>],
        [<ore:circuitLv>, <ore:cableGtSingleTin>, <ore:circuitLv>]
    ]);
    recipes.addShaped(<forestry:database>, [
        [<gregtech:meta_plate:1617>, <forestry:bee_chest>, <gregtech:meta_plate:1617>],
        [<forestry:tree_chest>, <actuallyadditions:block_misc:4>, <forestry:butterfly_chest>],
        [<ore:plateWood>, <gregtech:meta_item_1:261>, <ore:plateWood>]
    ]);
    recipes.addShaped(<forestry:analyzer>, [
        [<minecraft:glass>, <gregtech:meta_item_1:621>, <gregtech:meta_plate:324>],
        [null, <gregtech:meta_item_1:217>, <gregtech:machine:986>],
        [<ore:blockGlassColorless>, <gregtech:meta_item_1:621>, <ore:plateSteel>]
    ]);
    recipes.addShaped(<forestry:rainmaker>, [
        [null, <gregtech:meta_item_1:232>, null],
        [null, <gregtech:meta_item_1:217>, null],
        [<ore:circuitLv>, <gregtech:machine:986>, <ore:circuitLv>]
    ]);
