#地雷區

title @a title [{"text":"地雷區","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#[任務]5秒後天上會降下瞬爆苦力怕，存活者得分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"5\u79d2\u5f8c\u5929\u4e0a\u6703\u964d\u4e0b\u77ac\u7206\u82e6\u529b\u6015\uff0c\u5b58\u6d3b\u8005\u5f97\u5206!","color":"white"}]

scoreboard objectives add die deathCount
scoreboard players set @a die 0

schedule function main:misson/1_10/5/bomb 5s
schedule function main:misson/1_10/5/end 15s

scoreboard players set @e[tag=m_cen] misson_countdown 100
bossbar set minecraft:misson_timer max 100








