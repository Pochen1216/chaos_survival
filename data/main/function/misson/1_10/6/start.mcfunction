#喝水小卡

title @a title [{"text":"喝水小卡","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先喝完1瓶水獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u559d\u5b8c1\u74f6\u6c34\u7372\u52dd!","color":"white"}]

scoreboard objectives add drink minecraft.used:minecraft.potion
scoreboard players set @a drink 0



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/1_10/6/tick 1t








