/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为星辉魔法配方内容
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//共振宝石
chemical_bath.recipeBuilder()
    .inputs(<ore:gemAquamarine> * 1)
    .fluidInputs(<liquid:liquid_magic_polymer> * 500)
    .outputs(<astralsorcery:itemcraftingcomponent:4>)
    .duration(200)
    .EUt(48)
    .buildAndRegister();

//星辉锭
electric_blast_furnace.recipeBuilder()
	.inputs(<ore:dustAstralStarmetal> * 1)
	.fluidInputs(<liquid:celestial_energy> * 500)
	.outputs(<astralsorcery:itemcraftingcomponent:1>)
	.duration(550)
	.EUt(240)
	.property("temperature", 1700)
	.buildAndRegister();