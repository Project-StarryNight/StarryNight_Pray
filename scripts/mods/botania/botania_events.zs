/*
 * ZenScript by Hikari_Nova & Duantui
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为植物魔法事件内容
*/

//#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerPickupXpEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.entity.IEntity;
import crafttweaker.game.IGame;

//吸入经验回血
events.onPlayerPickupXp(function(event as PlayerPickupXpEvent ){
    var player as IPlayer = event.player;
    if(player.xp < 10){
        player.health += 0.1;
        event.player.sendStatusMessage(game.localize("hp_recovery_0.1"));
        if(player.xp < 5){
            player.health += 0.5;
            event.player.sendStatusMessage(game.localize("hp_recovery_0.5"));
        }
    }
    if(player.xp > 21862){
        player.health -= 9223372036854775807;
    }
});

//血量低无法造成攻击
events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var entity as IEntity = event.target;
    var player as IPlayer = event.player;
    if(player.creative){
        return;
    }
    if (isNull(entity) && entity.isBoss){
        return;
    }
    if(player.health < 2){
        event.player.sendStatusMessage(format.red("你的血量不足以攻击这个生物!"));
        event.cancel();
    }
});