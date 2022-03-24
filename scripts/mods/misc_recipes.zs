/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为杂项合成内容
*/

//凿子_自动雕凿机
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>, [
    [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
    [<gregtech:meta_item_1:187>, <gregtech:machine:986>, <gregtech:meta_item_1:187>],
    [<ore:circuitBasic>, <gregtech:meta_item_1:127>, <ore:circuitBasic>]
]);

//移除钢锭燃烧配方
furnace.remove(<libvulpes:productingot:7>);
furnace.remove(<minecraft:coal:1>);
furnace.remove(<ore:ingotTitaniumIridium>);
furnace.remove(<ore:ingotTitaniumAluminide>);
furnace.remove(<gregtech:meta_ingot:32020>);
furnace.remove(<gregtech:meta_ingot:32021>);
