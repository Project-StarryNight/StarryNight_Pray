/*
 * ZenScript by Hikari_Nova & shang_jun
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技自定义流体内容
*/

#loader gregtech
#priority 1001

import mods.gregtech.material.FluidTypes;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;

##############################
# 自定义流体
##############################
//蕴魔硝化柴油
MaterialBuilder(32500, "enchanted_nitro_diesel")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x09FFCD)
    .build();

//富集硅岩燃料
MaterialBuilder(32501, "enriched_naquadah_fuel")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(7000)
    .color(0x00FF7F)
    .build();

//超能硅岩燃料
MaterialBuilder(32502, "hyper_naquadah_fuel")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(8500)
    .color(0x3CB371)
    .build();

//充能石油
MaterialBuilder(32503, "enriched_oil")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0xC03240)
    .build();

//GSP-055RS空气
MaterialBuilder(32701, "gsp_055_rs_air")
    .fluid(FluidTypes.GAS, false)
    .fluidTemp(500)
    .color(0xFFA500)
    .build();

//GSP-055RS海水
MaterialBuilder(32702, "gsp_055_rs_seawater")
    .fluid(FluidTypes.LIQUID, true)
    .fluidTemp(700)
    .color(0xDAA520)
    .build();

//液态GSP-055RS空气
MaterialBuilder(32703, "liquid_gsp_055_rs_air")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(46)
    .color(0xE99700)
    .build();

//液态灵魂
MaterialBuilder(32704, "liquid_spirit")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(114)
    .color(0x2e2217)
    .build();

//龙素处理
MaterialBuilder(32708, "dragon_breath_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0xC39FB6)
    .build();

MaterialBuilder(32709, "dragon_blood")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x5C1F4F)
    .build();

MaterialBuilder(32710, "activated_dragon_tissue_mixture")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1200)
    .color(0x905F83)
    .build();

MaterialBuilder(32711, "mutated_dragon_tissue_mixture")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(3200)
    .color(0x4e3278)
    .build();

MaterialBuilder(32712, "excited_mutated_dragon_tissue_mixture")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(7800)
    .color(0x4D579A)
    .build();

MaterialBuilder(32713,"space_coolant")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(5)
    .color(0x034970)
    .build();

MaterialBuilder(32714,"mana_coolant")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(100)
    .color(0x37388E)
    .build();

MaterialBuilder(32715,"acidic_draconium_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x361E46)
    .build();

MaterialBuilder(32716,"nquadriaic_acid")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .components([<material:hydrogen>*3,<material:naquadria>*1,<material:oxygen>*4])
    .flags(["disable_decomposition"])
    .color(0x636C3E)
    .build();

MaterialBuilder(32717,"depleted_draconium_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x1F203C)
    .build();

MaterialBuilder(32718,"enriched_draconium_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x333366)
    .build();

//液态魔力聚合体
MaterialBuilder(32719, "liquid_magic_polymer")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(273)
    .color(0x8A2BE2)
    .build();

//液态Mana
MaterialBuilder(32720, "liquid_mana")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(273)
    .color(0x00BFFF)
    .build();

//蕴魔生物质溶液
MaterialBuilder(32721, "enchanted_biomass_liquid")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(273)
    .color(0x66FFCC)
    .build();

//天体能量
MaterialBuilder(32722, "celestial_energy")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(273)
    .color(0x0A0F49)
    .build();

//过氧化氢
MaterialBuilder(32723, "hydrogen_peroxide")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0xACD0D0)
    .build();