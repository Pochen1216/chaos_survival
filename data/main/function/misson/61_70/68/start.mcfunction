#環保愛地球

title @a title [{"text":"環保愛地球","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]率先種一棵樹的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"率先種一棵樹的人得一分!"}]



advancement revoke @a only main:misson/68

tag @a add misson68

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/61_70/68/tick 1t

