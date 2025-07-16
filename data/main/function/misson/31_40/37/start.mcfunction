#吸血鬼

title @a title [{"text":"吸血鬼","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player




#[任務]第一個使自己處在亮度0的地方的玩家得一分!

tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7b2c\u4e00\u500b\u4f7f\u81ea\u5df1\u8655\u5728\u4eae\u5ea60\u7684\u5730\u65b9\u7684\u73a9\u5bb6\u5f97\u4e00\u5206!","color":"white"}]


scoreboard objectives add detect_apple dummy


time set day

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200



schedule function main:misson/1_10/2/tick 1t








