/*
 * ZenScript by Hikari_Nova
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为 MBT 多方块机器提示内容
*/

import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;

//魔力硅岩反应堆
var MNR as IItemStack = <gregtech:machine:32000>;

MNR.addTooltip(game.localize("voltage_level") + "§rZPM §a- §3UV");
MNR.addTooltip(game.localize("magic_naquadah_reactor_tooltip_1"));
MNR.addTooltip(game.localize("magic_naquadah_reactor_tooltip_2"));
MNR.addTooltip(game.localize("magic_naquadah_reactor_tooltip_3"));
MNR.addTooltip(game.localize("magic_naquadah_reactor_tooltip_4"));
MNR.addTooltip(game.localize("magic_naquadah_reactor_tooltip_5"));
MNR.addTooltip(game.localize("magic_naquadah_reactor_tooltip_6"));

//硅岩移相器
var NaP as IItemStack = <gregtech:machine:32001>;

NaP.addTooltip(game.localize("voltage_level") + "§rZPM §a- §3UV");
NaP.addTooltip(game.localize("naquadah_phaser_controller_tooltip_1"));
NaP.addTooltip(game.localize("naquadah_phaser_controller_tooltip_2"));
NaP.addTooltip(game.localize("naquadah_phaser_controller_tooltip_3"));

//星空宇宙培育仓
var SUCC as IItemStack = <gregtech:machine:32002>;

SUCC.addTooltip(game.localize("voltage_level") + "§rLuV");
SUCC.addTooltip(game.localize("starry_universe_cultivation_cabin_tooltip_1"));
SUCC.addTooltip(game.localize("starry_universe_cultivation_cabin_tooltip_2"));
