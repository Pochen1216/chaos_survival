#釣魚執法

title @a title [{"text":"釣魚執法","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]生成一隻地獄幽靈，先擊殺者得一分
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先使用釣竿釣到自己並收竿者得一分!"}]


advancement revoke @a only main:misson/82

tag @a add misson82

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/81_90/82/tick 1t

