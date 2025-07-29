#建築師(偽)

title @a title [{"text":"建築師(偽)","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]第一位擁有64個木材的玩家加一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"第一位擁有64個木材的玩家加一分!","color":"white"}]

scoreboard objectives add detect_wood dummy
scoreboard players set @a detect_wood 0




scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/71_80/71/tick 1t








