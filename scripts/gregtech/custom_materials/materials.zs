/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为格雷科技自定义材料内容
*/

#loader gregtech
#priority 1000

import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;

//魔力物质_粉_矿石
MaterialBuilder(32001, "magic")
    .dust(2)
    .color(0xF5C0F7)
    .ore(2, 1, true)
    .build();

//注册现有的神秘
MaterialBuilder(32002, "thaumium")
    .ingot()
    .color(0x473B6D).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring"])
    .build();

//注册现有的虚空物质
MaterialBuilder(32003, "void")
    .ingot()
    .color(0x2A1248).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .build();

<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:iron>.addFlags("generate_dense");
<material:brass>.addFlags("generate_ring", "generate_gear");
