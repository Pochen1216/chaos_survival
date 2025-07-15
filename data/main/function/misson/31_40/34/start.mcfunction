#老二哲學

title @a title [{"text":"老二哲學","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]30秒後，血量第二多的人得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"30\u79d2\u5f8c\uff0c\u8840\u91cf\u7b2c\u4e8c\u591a\u7684\u4eba\u5f97\u4e00\u5206!","color":"white"}]

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

scoreboard objectives add H health
execute as @a run damage @s 0.000001 minecraft:generic_kill

schedule function main:misson/31_40/34/end 30s


