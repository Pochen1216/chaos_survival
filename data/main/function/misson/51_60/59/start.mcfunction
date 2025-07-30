#不祥之兆
title @a title [{"text":"不祥之兆","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]利用身上的不祥之兆，先觸發突襲的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"利用身上的不祥之兆，先觸發突襲的人得一分!","color":"white"}]

effect give @a bad_omen 60 0 true

advancement revoke @a only main:misson/59

scoreboard objectives add get_omen dummy
scoreboard players set @a get_omen 0


tag @a add misson59

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/51_60/59/tick 1t








