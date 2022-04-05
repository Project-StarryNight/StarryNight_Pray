/*
 * ZenScript by Hikari_Nova &shang_jun_
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
    .fluid()
    .color(0xb4eec1).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(8, 1, 0, true)
    .build();

MaterialBuilder(32005, "vibrant_alloy")
    .ingot()
    .fluid()
    .color(0xe9fe77).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(512, 2, 0, true)
    .blastTemp(3000,"LOW",480,850)
    .build();

MaterialBuilder(32006, "energetic_alloy")
    .ingot()
    .color(0xffdc8b).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(128, 2, 0, true)
    .blastTemp(1751,"LOW",480,730)
    .build();

MaterialBuilder(32007, "soularium")
    .ingot()
    .color(0x57412c).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .build();

MaterialBuilder(32008, "conductive_iron")
    .ingot()
    .color(0xd5a4a1).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(32, 1, 0, true)
    .blastTemp(1400,"LOW",120,500)
    .build();

MaterialBuilder(32009, "dark_steel")
    .ingot()
    .color(0x777777).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .build();

MaterialBuilder(32010, "end_steel")
    .ingot()
    .color(0xf2e794).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .cableProperties(2048, 3, 0, true)
    .blastTemp(4100,"MID",1920,870)
    .build();

MaterialBuilder(32011, "electrical_steel")
    .ingot()
    .color(0xb1b1b1).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .blastTemp(1500,"LOW",480,330)
    .build();

MaterialBuilder(32012, "crystalline_alloy")
    .ingot()
    .color(0x90ffff).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
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

//龙素处理
MaterialBuilder(32022, "draconium")
    .ingot()
    .color(0x6c3a9a).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_gear","generate_frame"])
    .blastTemp(8000,"HIGHER",122880,920)
    .build();

MaterialBuilder(32023, "draconium_awakened")
    .ingot()
    .color(0xff9c00).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_gear","generate_frame"])
    .blastTemp(10800,"HIGHEST",7864320,1710)
    .build();

MaterialBuilder(32024, "draconium_oxide_compound")
    .dust(4)
    .color(0x42205a)
    .ore(4, 2, true)
    .build();

MaterialBuilder(32025, "low_purity_draconium_oxide")
    .dust()
    .color(0x351949)
    .build();

MaterialBuilder(32026, "draconium_hexafluoride")
    .dust()
    .color(0x67669b)
    .build();

MaterialBuilder(32027, "stable_draconium")
    .dust()
    .color(0xB084CD)
    .build();

MaterialBuilder(32028, "crude_draconium")
    .dust()
    .color(0xB4A6CB)
    .build();

//觉醒龙素
MaterialBuilder(32029, "sub_stable_draconium_awakened_mixture")
    .dust()
    .color(0xD46012)
    .build();

MaterialBuilder(32030, "hyper_draconium_awakened_mixture")
    .dust()
    .color(0xCB743A)
    .build();

MaterialBuilder(32031, "hyper_draconium_awakened_sulfate")
    .dust()
    .color(0xA37819)
    .build();

MaterialBuilder(32032, "hyper_draconium_awakened")
    .dust()
    .color(0x996633)
    .build();

MaterialBuilder(32033, "hardened_hyper_draconium_awakened")
    .ingot()
    .fluid()
    .color(0xCCCC66).iconSet("shiny")
    .blastTemp(10800,"HIGHEST",1966080,810)
    .build();

MaterialBuilder(32034, "enchanted_draconium")
    .ingot()
    .color(0x336699).iconSet("shiny")
    .blastTemp(8000,"HIGH",122880,970)
    .build();

MaterialBuilder(32035, "hardened_draconium_awakened")
    .ingot()
    .color(0xA2AF86).iconSet("shiny")
    .blastTemp(9200,"HIGHER",122880,2070)
    .build();

MaterialBuilder(32036, "essential_draconium_awakened")
    .ingot()
    .fluid()
    .color(0x877691).iconSet("shiny")
    .blastTemp(9200,"HIGHEST",491520,850)
    .build();

//Rick Astlium锭
MaterialBuilder(32767, "rick_astlium")
    .ingot()
    .color(0xAF866A)
    .components([
    <material:neon> * 1,
    <material:vanadium> * 1,
    <material:erbium> * 1,
    <material:roentgenium> * 1,
    <material:oxygen> * 1,
    <material:nitrogen> * 1,
    <material:nitrogen> * 1,
    <material:silver> * 1,
    <material:iodine> * 1,
    <material:vanadium> * 1,
    <material:europium> * 1,
    <material:uranium> * 1,
    <material:phosphorus> * 1,
    ])
    .build();

<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:iron>.addFlags("generate_dense");
<material:brass>.addFlags("generate_ring", "generate_gear");
