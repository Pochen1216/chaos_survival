#那是汽球嗎

title @a title [{"text":"那是汽球嗎","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]生成一隻地獄幽靈，先擊殺者得一分
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"生成一隻地獄幽靈，先擊殺者得一分!"}]

execute as @a[team=!spec] at @s run summon ghast ~ ~ ~ {Tags:[misson]}

advancement revoke @a only main:misson/80

tag @a add misson80

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/71_80/80/tick 1t

