/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为硅岩移相器配方内容
*/

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

npcontroller.recipeBuilder()
    .inputs(<ore:dustNaquadria>)
    .inputs(<rftools:dimensional_shard> * 4)
    .fluidInputs([<liquid:enriched_naquadah_fuel> * 4000, <liquid:plasma.helium> * 150])
    .fluidOutputs(<liquid:hyper_naquadah_fuel> * 5000)
    .duration(40)
    .EUt(500000)
    .buildAndRegister();

npcontroller.recipeBuilder()
    .fluidInputs([<liquid:enchanted_nitro_diesel> * 2000, <liquid:naquadah_enriched> * 72])
    .fluidOutputs(<liquid:enriched_naquadah_fuel> * 2000)
    .duration(40)
    .EUt(125000)
    .buildAndRegister();
