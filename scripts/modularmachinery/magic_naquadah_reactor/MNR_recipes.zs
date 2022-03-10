/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为硅岩移相器配方内容
*/

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

RecipeBuilder.newBuilder("enriched_naquadah_fuel_steam","magic_naquadah_reactor", 1)
.addFluidInput(<liquid:enriched_naquadah_fuel> * 1)
.addFluidInput(<liquid:enriched_uranium_hexafluoride> * 1)
.addFluidInput(<liquid:mana> * 5)
.addFluidInput(<liquid:water> * 1700)
.addFluidOutput(<liquid:steam> * 272000)
.build();

RecipeBuilder.newBuilder("super_naquadah_fuel_steam","magic_naquadah_reactor", 1)
.addFluidInput(<liquid:super_naquadah_fuel> * 1)
.addFluidInput(<liquid:enriched_uranium_hexafluoride> * 5)
.addFluidInput(<liquid:mana> * 20)
.addFluidInput(<liquid:water> * 6800)
.addFluidOutput(<liquid:steam> * 1100000)
.build();
