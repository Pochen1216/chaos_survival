#相黏鍵

title @a title [{"text":"相黏鍵","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]最先蹲下5次的玩家得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u6700\u5148\u8e72\u4e0b5\u6b21\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"},{"text":""}]



scoreboard objectives add is_sneaking dummy
scoreboard objectives add sneak_count dummy
scoreboard objectives add sneak_before dummy

scoreboard players set @a is_sneaking 0
scoreboard players set @a sneak_count 0
scoreboard players set @a sneak_before 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/21_30/21/tick 1t


