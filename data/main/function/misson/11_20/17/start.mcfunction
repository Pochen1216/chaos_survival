
#指令方塊大師

title @a title [{"text":"指令方塊大師","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player

#​[任務]你的腳下多了一顆指令方塊，最快用任意手段觸發他20遍即可得一分!
tellraw @a ["",{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"\u4f60\u7684\u8173\u4e0b\u591a\u4e86\u4e00\u9846\u6307\u4ee4\u65b9\u584a\uff0c\u6700\u5feb\u7528\u4efb\u610f\u624b\u6bb5\u89f8\u767c\u4ed620\u904d\u5373\u53ef\u5f97\u4e00\u5206!","color":"white"}]

scoreboard objectives add counter dummy
scoreboard players set @a counter 0


execute as @a[team=!spec] at @s run summon marker ~ ~ ~ {Tags:[misson,structure]}
execute as @e[type=marker,tag=structure] at @s run place template main:17 ~ ~-1 ~

scoreboard players set @e[tag=m_cen] misson_countdown 1200
bossbar set minecraft:misson_timer max 1200

schedule function main:misson/11_20/17/tick 1t


