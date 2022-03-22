/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技自定义流体内容
*/

#loader gregtech
#priority 1000

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
MaterialBuilder(32502, "super_naquadah_fuel")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(8500)
    .color(0x3CB371)
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
    .fluidTemp(78)
    .color(0xE99700)
    .build();
