#我獨自升級

title @a title [{"text":"我獨自升級","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]率先升一等的人得一分!
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"aqua"},{"text":"\u7387\u5148\u5347\u4e00\u7b49\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]


scoreboard objectives add lv_before dummy


execute as @a run scoreboard players operation @s lv_before = @s lv_now

scoreboard players add @a lv_before 1

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/41_50/47/tick 5t








