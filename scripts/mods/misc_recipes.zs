/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为杂项合成内容
*/

//凿子_自动雕凿机

import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;

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

//Nova金属
implosion_compressor.recipeBuilder()
    .inputs(<ore:plateMaragingSteel300> * 64)
    .outputs(<gregtech:meta_nugget:32699>)
    .property("explosives",16)
    .EUt(7680)
    .duration(1000)
    .buildAndRegister();

//附魔金苹果
chemical_reactor.findRecipe(30, [<minecraft:apple:0>, <minecraft:gold_block:0> * 8], null).remove();

//UHV 电池箱
# 16A
recipes.addShaped(<gregtech:machine:1344>, [[null, null, null],[<gregtech:wire_hex:33>, <ore:chest>, <gregtech:wire_hex:33>], [<gregtech:wire_hex:33>, <gregtech:machine:994>, <gregtech:wire_hex:33>]]);
# 8A
recipes.addShaped(<gregtech:machine:1334>, [[null, null, null],[<gregtech:wire_octal:33>, <ore:chest>, <gregtech:wire_octal:33>], [<gregtech:wire_octal:33>, <gregtech:machine:994>, <gregtech:wire_octal:33>]]);
# 4A
recipes.addShaped(<gregtech:machine:1324>, [[null, null, null],[<gregtech:wire_quadruple:33>, <ore:chest>, <gregtech:wire_quadruple:33>], [<gregtech:wire_quadruple:33>, <gregtech:machine:994>, <gregtech:wire_quadruple:33>]]);

mods.jei.JEI.addItem(<gregtech:meta_dust:41>);
mods.jei.JEI.addItem(<gregtech:meta_dust:51>);