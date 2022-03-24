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
import mods.gregtech.material.Elements;

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

//末影接口合金
MaterialBuilder(32004, "pulsating_iron")
    .ingot()
    .color(0xb4eec1).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(8, 1, 0, true)
    .build();

MaterialBuilder(32008, "conductive_iron")
    .ingot()
    .color(0xd5a4a1).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(32, 1, 0, true)
    .blastTemp(1400,"LOW",120,500)
    .build();

MaterialBuilder(32006, "energetic_alloy")
    .ingot()
    .color(0xffdc8b).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(128, 2, 0, true)
    .blastTemp(1751,"LOW",480,730)
    .build();

MaterialBuilder(32005, "vibrant_alloy")
    .ingot()
    .color(0xe9fe77).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(512, 2, 0, true)
    .blastTemp(3000,"LOW",480,850)
    .build();

MaterialBuilder(32010, "end_steel")
    .ingot()
    .color(0xf2e794).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(2048, 3, 0, true)
    .blastTemp(4100,"MID",1920,870)
    .build();

MaterialBuilder(32012, "crystalline_alloy")
    .ingot()
    .color(0x90ffff).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(8192, 3, 0, true)
    .blastTemp(4900,"MID",1920,830)
    .build();

MaterialBuilder(32013, "melodic_alloy")
    .ingot()
    .color(0xffbeff).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(32768, 4, 0, true)
    .blastTemp(5800,"HIGH",7680,850)
    .build();

MaterialBuilder(32014, "stellar_alloy")
    .ingot()
    .color(0xFFFFC0).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(131072, 4, 0, true)
    .blastTemp(9000,"HIGH",7680,1030)
    .build();

MaterialBuilder(32007, "soularium")
    .ingot()
    .color(0x57412c).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .build();

MaterialBuilder(32009, "dark_steel")
    .ingot()
    .color(0x777777).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .build();

MaterialBuilder(32011, "electrical_steel")
    .ingot()
    .color(0xb1b1b1).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .build();

//钛铝合金
MaterialBuilder(32020, "titanium_aluminide")
    .ingot()
    .color(0xABBFDA).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_gear"])
    .components([<material:titanium> * 1, <material:aluminium> * 1])
    .blastTemp(2400,"MID",768,800)
    .build();

//钛铱合金
MaterialBuilder(32021, "titanium_iridium")
    .ingot()
    .color(0xD4DBE0).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_gear"])
    .components([<material:titanium> * 1, <material:iridium> * 1])
    .blastTemp(4750,"HIGHER",7680,850)
    .build();

<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:iron>.addFlags("generate_dense");
<material:brass>.addFlags("generate_ring", "generate_gear");
