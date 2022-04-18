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
MaterialBuilder(32705, "draconium_oxide_compound_slurry")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x42205a)
    .build();

MaterialBuilder(32706, "fluoantimonate_draconium_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x5D5980)
    .build();

MaterialBuilder(32707, "precipitated_draconium_residue_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x483A3B)
    .build();

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

MaterialBuilder(32711, "critical_dragon_tissue_mixture")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(3200)
    .color(0x4e3278)
    .build();

MaterialBuilder(32712, "excited_dragon_tissue_mixture")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(7800)
    .color(0x4D579A)
    .build();

MaterialBuilder(32713, "inactivated_dragon_tissue_mixture")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(1600)
    .color(0x363B5C)
    .build();

//觉醒龙素
MaterialBuilder(32714, "hyper_draconium_awakened_mixture_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0xCC6633)
    .build();

MaterialBuilder(32715, "precipitated_draconium_awakened_residue_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x666633)
    .build();

MaterialBuilder(32716, "hyper_slurry")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x6B4924)
    .build();

MaterialBuilder(32717, "cosmic_matter_solution")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x262538)
    .build();

//含杂氟锑酸
MaterialBuilder(32718, "impure_fluoroantimonic_acid")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x717A75)
    .build();

//液态魔力聚合体
MaterialBuilder(32719, "liquid_magic_polymer")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(273)
    .color(0x8A2BE2)
    .build();
