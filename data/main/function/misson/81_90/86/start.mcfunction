#環保愛大地

title @a title [{"text":"環保愛大地","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先使用一次骨粉得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先使用一次骨粉得一分!","color":"white"}]

scoreboard objectives add m86 minecraft.used:minecraft.bone_meal
scoreboard players set @a m86 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/86/tick 1t








