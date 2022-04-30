#priority 100
//#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.game.IGame;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerWakeUpEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.data.IData;
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var player as IPlayer =event.player;
    player.sendMessage(game.localize("events_loggedin_1")+"§1"+player.name);
    player.sendMessage(game.localize("events_loggedin_2")+"§2"+"664266845");
    player.sendMessage(game.localize("events_loggedin_3")+"§2"+"https://github.com/Project-StarryNight/StarryNight_Pray");
    player.sendMessage(game.localize("events_loggedin_4")+"§2"+"https://www.mcbbs.net/thread-1323610-1-1.html");
    player.sendMessage(game.localize("events_loggedin_5")+"§2"+"https://www.mcmod.cn/modpack/397.html");
});

events.onPlayerWakeUp(function(event as PlayerWakeUpEvent){
    var player as IPlayer =event.player;
    player.sendStatusMessage(game.localize("events_wakeup_1")+","+"§1"+player.name);
});

events.onPlayerRespawn(function(event as PlayerRespawnEvent){
    var player as IPlayer =event.player;
    player.sendMessage(game.localize("events_respawn_1")+game.localize("events_respawn_2")+"§e114514"+game.localize("events_respawn_3"));
});