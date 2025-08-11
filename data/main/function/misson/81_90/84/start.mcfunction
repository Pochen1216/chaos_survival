#自主背鍋

title @a title [{"text":"自主背鍋","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]填滿一個鍋釜得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先填滿一個鍋釜者得一分!","color":"white"}]

scoreboard objectives add m84 custom:fill_cauldron
scoreboard players set @a m84 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/84/tick 1t








