#逼近極限

title @a title [{"text":"逼近極限","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先將血量到達半顆心的獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u5c07","color":"white"},{"text":"\u8840\u91cf\u5230\u9054\u534a\u9846\u5fc3\u7684\u7372\u52dd"},{"text":"!","color":"white"}]

scoreboard objectives add health health



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/1_10/7/tick 1t








