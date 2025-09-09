#開箱!

title @a title [{"text":"開箱!","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]先開啟儲物箱一次得一分
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"先開啟儲物箱一次得一分!","color":"white"}]

scoreboard objectives add m89 minecraft.custom:open_chest
scoreboard players set @a m89 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/89/tick 1t








