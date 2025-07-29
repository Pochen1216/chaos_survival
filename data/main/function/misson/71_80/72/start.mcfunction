#蹦蹦炸彈

title @a title [{"text":"蹦蹦炸彈","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]點燃一顆TNT，然後快跑！
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"點燃一顆TNT，然後快跑！","color":"white"}]




scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/71_80/72/tick 1t








