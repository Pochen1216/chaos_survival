#掏爆黃金

title @a title [{"text":"掏爆黃金","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]率先用爆一個金鎬的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u7387\u5148\u7528\u7206\u4e00\u500b\u91d1\u93ac\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]

scoreboard objectives add break_gpickaxe minecraft.broken:minecraft.golden_pickaxe
scoreboard players set @a break_gpickaxe 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/41_50/46/tick 5t








