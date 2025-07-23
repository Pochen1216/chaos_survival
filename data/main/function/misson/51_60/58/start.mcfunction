#無限劍制

title @a title [{"text":"無限劍制","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]30秒後有最多劍的玩家獲得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"30秒後有最多劍的玩家獲得一分!","color":"white"}]



scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/51_60/58/end 30s


