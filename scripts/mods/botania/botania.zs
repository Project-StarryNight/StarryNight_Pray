/*
 * ZenScript by Hikari_Nova & Duantui & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为植物魔法内容
*/

import mods.botania.ManaInfusion;

//盖亚水晶
recipes.remove(<botania:pylon:2>);
recipes.addShaped(<botania:pylon:2>,[
    [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>],
    [<botania:bifrostperm>,<botania:pylon>,<botania:bifrostperm>],
    [<botania:manaresource:7>,<botania:manaresource:8>,<botania:manaresource:7>]]);

//炼金催化器
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>,[
    [<botania:livingrock>,<ore:ingotGold>,<botania:livingrock>],
    [<enderio:block_tank>,<botania:manaresource:1>,<minecraft:brewing_stand>],
    [<botania:livingrock>,<ore:ingotGold>,<botania:livingrock>]]);

//污血项链
recipes.remove(<botania:bloodpendant>);
recipes.addShaped(<botania:bloodpendant>,[
    [null,<minecraft:prismarine_shard>,<bloodarsenal:base_item:2>],
    [<minecraft:prismarine_shard>,<minecraft:ghast_tear>,<minecraft:prismarine_shard>],
    [<botania:manaresource:2>,<minecraft:prismarine_shard>,null]]);

//魔力钢锭
ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>,<gregtech:meta_ingot:324>,3000);
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<botania:storage>,<gregtech:meta_block_compressed_20:4>,27000);

//魔力钻石
ManaInfusion.removeRecipe(<botania:storage:3>);
ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>,<ore:gemFlawlessDiamond>,10000);
ManaInfusion.addInfusion(<botania:manaresource:2> * 2,<ore:gemExquisiteDiamond>,7500);
ManaInfusion.addInfusion(<botania:manaresource:2>,<ore:crystalDiamantine>,20000);
ManaInfusion.addInfusion(<botania:manaresource:2>,<actuallyadditions:item_crystal_empowered:2>,15000);
