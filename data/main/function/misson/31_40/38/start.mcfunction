#我的最愛

title @a title [{"text":"我的最愛","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player



#[任務]第一個被弓箭射到的玩家得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7b2c\u4e00\u500b\u88ab\u5f13\u7bad\u5c04\u5230\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"}]


#execute as @a at @s run summon minecraft:wither ~ ~ ~ {Tags:[misson],Invul:100,Health:20}
#execute as @a at @s run attribute @e[type=minecraft:wither,limit=1,sort=nearest] minecraft:max_health base set 20


advancement revoke @a only main:misson/38


tag @a add misson38



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/31_40/38/tick 1t








