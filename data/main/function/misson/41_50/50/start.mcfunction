#冷知識答題

title @a title [{"text":"冷知識答題","color":"white"}]
execute as @a at @s run playsound minecraft:entity.arrow.hit_player


#[事件]回答一題冷知識，正確加一分，錯誤獲得1分鐘中毒，不回答無事發生!
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"aqua"},{"text":"\u56de\u7b54\u4e00\u984c\u51b7\u77e5\u8b58\uff0c\u6b63\u78ba\u52a0\u4e00\u5206\uff0c\u932f\u8aa4\u7372\u5f971\u5206\u9418\u4e2d\u6bd2\uff0c\u4e0d\u56de\u7b54\u7121\u4e8b\u767c\u751f!","color":"white"}]


scoreboard objectives add respond trigger
scoreboard players set @a respond 0
scoreboard players enable @a respond

execute store result score @e[tag=m_cen,limit=1] respond run random roll 1..3
execute if entity @e[tag=m_cen,scores={respond=1}] run function main:misson/41_50/50/question/1
execute if entity @e[tag=m_cen,scores={respond=2}] run function main:misson/41_50/50/question/2
execute if entity @e[tag=m_cen,scores={respond=3}] run function main:misson/41_50/50/question/3

scoreboard players set @e[tag=m_cen] misson_countdown 600
bossbar set minecraft:misson_timer max 600

schedule function main:misson/41_50/50/tick 5t








