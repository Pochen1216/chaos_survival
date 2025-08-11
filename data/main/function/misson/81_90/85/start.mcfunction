#跳

title @a title [{"text":"跳","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先獲得一枚盾牌獲勝!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先跳躍者得一分!","color":"white"}]

scoreboard objectives add m85 custom:jump
scoreboard players set @a m85 0


scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/85/tick 1t








