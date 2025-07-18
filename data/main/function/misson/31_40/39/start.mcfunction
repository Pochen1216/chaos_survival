#天打雷劈

title @a title [{"text":"天打雷劈","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player



#[任務]天氣已被設為雷雨，已發下喚雷三叉戟，第一個被雷打到的玩家得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5929\u6c23\u5df2\u88ab\u8a2d\u70ba\u96f7\u96e8\uff0c\u5df2\u767c\u4e0b\u559a\u96f7\u4e09\u53c9\u621f\uff0c\u7b2c\u4e00\u500b\u88ab\u96f7\u6253\u5230\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"}]



#execute as @a at @s run summon minecraft:wither ~ ~ ~ {Tags:[misson],Invul:100,Health:20}
#execute as @a at @s run attribute @e[type=minecraft:wither,limit=1,sort=nearest] minecraft:max_health base set 20


advancement revoke @a only main:misson/39


tag @a add misson39

give @a[team=!spec] minecraft:trident[minecraft:enchantments={channeling:1}]
weather thunder

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/31_40/39/tick 1t








