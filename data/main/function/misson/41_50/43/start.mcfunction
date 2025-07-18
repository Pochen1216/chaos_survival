#進進出出

title @a title [{"text":"進進出出","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[任務]先進入不同位面者得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u5148\u9032\u5165\u4e0d\u540c\u4f4d\u9762\u8005\u5f97\u4e00\u5206!","color":"white"}]


advancement revoke @a only main:misson/43
tag @a add misson43

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/41_50/43/tick 5t








