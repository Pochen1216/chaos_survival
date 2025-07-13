#來不及解釋了

title @a title [{"text":"來不及解釋了","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]率先坐上任何船的人得分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u5750\u4e0a\u4efb\u4f55\u8239\u7684\u4eba\u5f97\u5206!","color":"white"}]

scoreboard objectives add detect_apple dummy


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200



schedule function main:misson/1_10/2/tick 1t








