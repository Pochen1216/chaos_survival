#冰桶挑戰

title @a title [{"text":"冰桶挑戰","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先獲得一顆蘋果獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148收集一顆黑曜石可得一分!","color":"white"}]

scoreboard objectives add detect_obby dummy



scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/51_60/54/tick 1t








