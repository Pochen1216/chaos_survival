#開心農場

title @a title [{"text":"開心農場","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]已為每人發下一把木鋤，先用壞的得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5df2\u70ba\u6bcf\u4eba\u767c\u4e0b\u4e00\u628a\u6728\u92e4\uff0c\u5148\u7528\u58de\u7684\u5f97\u4e00\u5206!","color":"white"}]

scoreboard objectives add break minecraft.broken:minecraft.wooden_hoe
scoreboard players set @a break 0

give @a wooden_hoe

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/21_30/26/tick 1t


