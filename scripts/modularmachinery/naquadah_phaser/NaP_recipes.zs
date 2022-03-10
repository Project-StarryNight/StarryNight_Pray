/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为硅岩移相器配方内容
*/

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

RecipeBuilder.newBuilder("enriched_naquadah_fuel","naquadah_phaser", 20)
.addEnergyPerTickInput(500000)
.addFluidInput(<liquid:enchanted_nitro_diesel> * 1000)
.addFluidInput(<liquid:naquadah_enriched> * 36)
.addFluidOutput(<liquid:enriched_naquadah_fuel> * 1000)
.build();

RecipeBuilder.newBuilder("super_naquadah_fuel","naquadah_phaser", 20)
.addEnergyPerTickInput(2000000)
.addFluidInput(<liquid:enriched_naquadah_fuel> * 2000)
.addFluidInput(<liquid:plasma.helium> * 75)
.addItemInput(<ore:dustNaquadria> , 1)
.addItemInput(<rftools:dimensional_shard> * 4)
.addFluidOutput(<liquid:super_naquadah_fuel> * 2500)
.build();