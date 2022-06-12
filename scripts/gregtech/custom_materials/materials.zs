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
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .build();

//注册现有的虚空物质
MaterialBuilder(32003, "void")
    .ingot()
    .color(0x2A1248).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .build();

//末影接口合金
MaterialBuilder(32004, "pulsating_iron")
    .ingot().fluid()
    .color(0xb4eec1).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(8, 1, 0, true)
    .build();

MaterialBuilder(32005, "vibrant_alloy")
    .ingot().fluid()
    .color(0xe9fe77).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(512, 1, 0, true)
    .blastTemp(1650,"LOW",120,660)
    .build();

MaterialBuilder(32006, "energetic_alloy")
    .ingot().fluid()
    .color(0xffdc8b).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(128, 1, 0, true)
    .blastTemp(1200,"LOW",120,430)
    .build();

MaterialBuilder(32007, "soularium")
    .ingot().fluid()
    .color(0x57412c).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .build();

MaterialBuilder(32008, "conductive_iron")
    .ingot().fluid()
    .color(0xd5a4a1).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(32, 1, 0, true)
    .build();

MaterialBuilder(32009, "dark_steel")
    .ingot().fluid()
    .color(0x777777).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .build();

MaterialBuilder(32010, "end_steel")
    .ingot().fluid()
    .color(0xf2e794).iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .cableProperties(2048, 2, 0, true)
    .build();

MaterialBuilder(32011, "electrical_steel")
    .ingot().fluid()
    .color(0xb1b1b1).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .build();

MaterialBuilder(32012, "crystalline_alloy")
    .ingot().fluid()
    .color(0x90ffff).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod","generate_frame"])
    .cableProperties(8192, 2, 0, true)
    .blastTemp(4200,"MID",480,3000)
    .build();

MaterialBuilder(32013, "melodic_alloy")
    .ingot().fluid()
    .color(0xffbeff).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(131072, 4, 0, true)
    .blastTemp(7000,"HIGH",1920,8000)
    .build();

MaterialBuilder(32014, "stellar_alloy")
    .ingot().fluid()
    .color(0xFFFFC0).iconSet("shiny")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod"])
    .cableProperties(524288, 4, 0, true)
    .blastTemp(8900,"HIGHER",1920,9300)
    .build();

//琥珀
MaterialBuilder(32015, "amber")
    .gem()
    .color(0xDA803D)
    .components([
    <material:carbon> * 10,
    <material:hydrogen> * 10,
    <material:oxygen> * 16
    ])
    .iconSet("RUBY")
    .flags(["generate_rod","generate_long_rod","no_smelting", "crystallizable", "generate_plate", "generate_bolt_screw"])
    .ore(2, 1)
    .build();

//钛铝合金
MaterialBuilder(32020, "titanium_aluminide")
    .ingot().fluid()
    .color(0xABBFDA).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_gear"])
    .components([<material:titanium> * 1, <material:aluminium> * 1])
    .blastTemp(2400,"MID",768,800)
    .build();

//钛铱合金
MaterialBuilder(32021, "titanium_iridium")
    .ingot().fluid()
    .color(0xD4DBE0).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_gear"])
    .components([<material:titanium> * 1, <material:iridium> * 1])
    .blastTemp(4750,"HIGHER",7680,850)
    .build();

//龙素
MaterialBuilder(32022, "draconium")
    .ingot()
    .color(0x6C3A9A).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_frame","generate_dense","generate_foil","generate_gear"])
    .blastTemp(7000,"HIGHER",122880,900)
    .fluidPipeProperties(6000,400,true)
    .build();

Elements.add(500, 500, -1, null, "Draconium", "Dr", false);

MaterialBuilder(32023, "draconium_awakened")
    .ingot().fluid()
    .color(0xFF9C00).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_frame","generate_dense","generate_foil","generate_gear"])
    .blastTemp(9000,"HIGHEST",491520,1200)
    .build();

Elements.add(500, 1000, -1, null, "Draconium Awakened", "*Dr*", true);

//水晶矩阵
MaterialBuilder(32024, "crystal_matrix")
    .ingot()
    .color(0x70DFD7).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_frame"])
    .blastTemp(6500,"HIGH",480,8500)
    .build();

//晶素锭
MaterialBuilder(32025, "crystaltine")
    .ingot().fluid()
    .color(0x9CDFFC).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_frame"])
    .blastTemp(5000,"HIGH",480,2200)
    .build();

//龙素处理
MaterialBuilder(32026,"dragon_essence")
    .dust(2)
    .color(0xF5C0F7)
    .ore(1, 1, true)
    .build();

MaterialBuilder(32027,"crude_draconium_residue")
    .dust()
    .color(0x664773)
    .build();

MaterialBuilder(32030,"empowered_draconium")
    .dust()
    .color(0x9C5871)
    .build();

MaterialBuilder(32032,"naquadria_hydroxide")
    .dust()
    .components([<material:hydrogen>*3,<material:naquadria>*1,<material:oxygen>*3])
    .color(0x15388E)
    .build();

MaterialBuilder(32033,"ethylanthraquinone")
    .dust()
    .color(0xC6B96A)
    .build();

MaterialBuilder(32034,"phthalic_anhydride")
    .dust()
    .color(0xC18AC1)
    .build();

//精金
MaterialBuilder(32035,"adamantine")
    .ingot().fluid()
    .color(0xB03247).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_frame"])
    .blastTemp(6100,"HIGH",7680,600)
    .build();

Elements.add(79, 200, -1, null, "Adamantine", "Ad", true);

//山铜处理
MaterialBuilder(32036,"compact_stone")
    .dust()
    .color(0x444444)
    .build();

MaterialBuilder(32037,"unknown_residue")
    .dust()
    .color(0x1E6418)
    .build();

MaterialBuilder(32038,"mana_infused_residue")
    .dust()
    .color(0x202E54)
    .build();

MaterialBuilder(32039,"orichalcum")
    .ingot().fluid()
    .color(0xD135DA).iconSet("shiny")
    .flags(["generate_plate","generate_rod","generate_frame"])
    .blastTemp(4000,"MID",480,800)
    .build();

Elements.add(29, 200, -1, null, "Orichalcum", "Or", true);

//硼铁合金
MaterialBuilder(32028,"ferroboron")
    .ingot().fluid()
    .color(0x808480).iconSet("shiny")
    .build();

//高强合金
MaterialBuilder(32029,"tough_alloy")
    .ingot().fluid()
    .color(0x181322).iconSet("shiny")
    .build();

//硬碳合金
MaterialBuilder(32031,"hard_carbon_alloy")
    .ingot().fluid()
    .color(0x72A5B1).iconSet("shiny")
    .build();

//极限合金
MaterialBuilder(32040,"extreme_alloy")
    .ingot().fluid()
    .color(0x3C4F57).iconSet("shiny")
    .blastTemp(4800,"HIGH",1920,400)
    .flags(["generate_plate","generate_rod","generate_frame"])
    .build();

//热引合金
MaterialBuilder(32041,"thermoconducting_alloy")
    .ingot().fluid()
    .color(0x6E293C).iconSet("shiny")
    .blastTemp(5000,"HIGH",1920,500)
    .flags(["generate_plate","generate_rod","generate_frame"])
    .build();

//基岩合金
MaterialBuilder(32042,"bedrock_alloy")
    .ingot().fluid()
    .color(0x333233).iconSet("shiny")
    .blastTemp(7200,"HIGH",7680,1100)
    .flags(["generate_plate","generate_rod","generate_frame"])
    .build();

//基岩精华
MaterialBuilder(32043,"bedrock_essence")
    .dust()
    .color(0x202E1F)
    .build();

//TE5 合金
# 末影锭
MaterialBuilder(32100, "enderium")
    .ingot()
    .color(0x18514B).iconSet("shiny")
    .flags(["generate_plate", "generate_gear"])
    .blastTemp(6000,"HIGH",480,1900)
    .build();

# 信素锭
MaterialBuilder(32101, "signalum")
    .ingot()
    .color(0xFB6114).iconSet("shiny")
    .flags(["generate_plate", "generate_gear"])
    .blastTemp(5000,"HIGH",480,1230)
    .build();

# 流明锭
MaterialBuilder(32102, "lumium")
    .ingot()
    .color(0xFFF2AD).iconSet("shiny")
    .flags(["generate_plate", "generate_gear"])
    .blastTemp(5400,"HIGH",480,1600)
    .build();

# 红石琥珀金
MaterialBuilder(32103, "electrum_flux")
    .ingot()
    .color(0xCDA942).iconSet("shiny")
    .flags(["generate_plate"])
    .blastTemp(5400,"HIGH",7680,1580)
    .build();

# 炽焱流明
MaterialBuilder(32104, "lumium_pyrotheum")
    .ingot().fluid()
    .color(0xFFCC66).iconSet("shiny")
    .flags(["generate_plate","generate_foil"])
    .blastTemp(5400,"HIGH",7680,1580)
    .build();

# 极寒末影
MaterialBuilder(32105, "enderium_cryotheum")
    .ingot().fluid()
    .color(0x16616C).iconSet("shiny")
    .flags(["generate_plate","generate_foil","generate_fine_wire"])
    .blastTemp(5400,"HIGH",7680,1580)
    .build();

# 荧光信素
MaterialBuilder(32106, "signalum_fluorescent")
    .ingot().fluid()
    .color(0xF2A939).iconSet("shiny")
    .flags(["generate_plate"])
    .cableProperties(32768, 2, 0, true)
    .blastTemp(5400,"HIGH",7680,1580)
    .build();

# 高能合金
MaterialBuilder(32107, "high_energy_alloy")
    .ingot().fluid()
    .color(0x4F85BA).iconSet("shiny")
    .flags(["generate_plate"])
    .cableProperties(131072, 16, 1, false)
    .blastTemp(5400,"HIGHEST",1920,11030)
    .build();

//EnderUtilities 合金
# 基础末影合金
MaterialBuilder(32150, "ender_alloy_basic")
    .ingot().fluid()
    .color(0x6FA276).iconSet("shiny")
    .blastTemp(1200,"LOW",128,400)
    .flags(["generate_long_rod","generate_plate"])
    .build();
# 增强末影合金
MaterialBuilder(32151, "ender_alloy_enhancement")
    .ingot().fluid()
    .color(0xA1DEAA).iconSet("shiny")
    .blastTemp(2000,"MID",768,600)
    .flags(["generate_rod","generate_long_rod","generate_plate"])
    .build();
# 高级末影合金
MaterialBuilder(32152, "ender_alloy_advanced")
    .ingot().fluid()
    .color(0xAEECED).iconSet("shiny")
    .blastTemp(4200,"HIGH",4608,900)
    .flags(["generate_plate"])
    .build();

//氟化钠
MaterialBuilder(32153, "sodium_fluoride")
    .dust()
    .color(0x7171B5)
    .build();

//硝酸铵
MaterialBuilder(32154, "ammonium_nitrate")
    .dust()
    .color(0x518100)
    .build();

//二茂铁
MaterialBuilder(32155, "ferrocene")
    .dust()
    .color(0xD78026).iconSet("shiny")
    .build();

//植物魔法材料
# 活石
MaterialBuilder(32160, "livingrock")
    .ingot()
    .color(0xFDF5E6)
    .iconSet("INGOT")
    .flags([
        "generate_plate", "generate_dense", "generate_rod", "generate_ring",
        "generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring",
        "generate_spring_small", "generate_small_gear"
    ])
    .build();

# 魔力钢
MaterialBuilder(32161, "manasteel")
    .ingot()
    .color(0x00BFFF)
    .iconSet("INGOT")
    .blastTemp(1400, "LOW", 386, 250)
    .flags([
    "generate_plate", "generate_dense", "generate_rod", "generate_ring",
    "generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring",
    "generate_spring_small", "generate_small_gear"
    ])
    .build();

# 源质钢锭
MaterialBuilder(32162, "elven_elementium")
    .ingot()
    .color(0xFF69B4)
    .iconSet("INGOT")
    .blastTemp(2400, "MID", 768, 300)
    .flags([
    "generate_plate", "generate_dense", "generate_rod", "generate_ring",
    "generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring",
    "generate_spring_small", "generate_small_gear"
    ])
    .build();

# 神话钢锭
MaterialBuilder(32163, "mythicalsteel")
    .ingot().fluid()
    .color(0xFFD700)
    .iconSet("INGOT")
    .blastTemp(3200, "MID", 2048, 350)
    .flags([
    "generate_plate", "generate_dense", "generate_rod", "generate_ring",
    "generate_foil", "generate_long_rod", "generate_bolt_screw", "generate_spring",
    "generate_spring_small", "generate_small_gear"
    ])
    .build();

//Novanium
MaterialBuilder(32699, "novanium")
    .ingot().fluid()
    .color(0xc0dee8).iconSet("shiny")
    .blastTemp(10800,"HIGHEST",1966080,1000)
    .build();

//Rick Astlium
MaterialBuilder(32700, "rick_astlium")
    .ingot().fluid()
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
<material:silver>.addFlags("generate_gear");
<material:electrum>.addFlags("generate_gear");
