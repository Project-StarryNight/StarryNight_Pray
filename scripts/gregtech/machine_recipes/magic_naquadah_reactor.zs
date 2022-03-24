/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为魔力硅岩反应堆配方内容
*/

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

mnreactor.recipeBuilder()
    .fluidInputs([<liquid:enriched_naquadah_fuel> * 1, <liquid:mana> * 5, <liquid:enriched_uranium_hexafluoride> * 1, <liquid:water> * 34000])
    .duration(20)
    .EUt(-136000)
    .buildAndRegister();

mnreactor.recipeBuilder()
    .fluidInputs([<liquid:super_naquadah_fuel> * 1, <liquid:mana> * 20, <liquid:enriched_uranium_hexafluoride> * 5, <liquid:water> * 136000])
    .EUt(-550000)
    .duration(20)
    .buildAndRegister();
