#愚蠢埋葬

title @a title [{"text":"愚蠢埋葬","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]最快用礫石或沙子把自己埋起來的得一分
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"最快用礫石或沙子把自己埋起來的得一分!","color":"white"}]




scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/91_100/91/tick 1t








