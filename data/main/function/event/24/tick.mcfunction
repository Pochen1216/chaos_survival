

execute as @a[scores={buy=1..},tag=e22_buyed] run tellraw @s ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"本局遊戲已交易過，不得再次交易","color":"white"}]
execute as @a[scores={buy=1..},tag=e22_buyed] run scoreboard players set @s buy 0

#speed +20%
execute as @a[scores={buy=1}] run attribute @s movement_speed base set 0.12
execute as @a[scores={buy=1}] run attribute @s max_health base set 18

#iron_ingot
execute as @a[scores={buy=2}] run give @s iron_ingot 64
execute as @a[scores={buy=2}] run attribute @s max_health base set 15

#resis
execute as @a[scores={buy=3}] run tag @s add e22_res
execute as @a[scores={buy=3}] run attribute @s max_health base set 10

#points

execute as @a[scores={buy=4}] run give @s guster_banner_pattern[custom_name=[{"text":"得分吸收器","italic":false,"color":"dark_aqua"}],lore=[[{"text":"每2次獲得隨機任務勝利時，會額外獲得1分。","italic":false}],[{"text":"此效果已銘刻進你的靈魂，即使將本物品扔掉效果仍會生效。","italic":false}]],enchantment_glint_override=true]
execute as @a[scores={buy=4}] run tag @s add e22_p
execute as @a[scores={buy=4}] run attribute @s max_health base set 2
execute as @a[scores={buy=4}] run scoreboard objectives add e22_add dummy
execute as @a[scores={buy=4}] run scoreboard objectives add e22_ach dummy

tellraw @a[scores={buy=1..}] ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"購買成功!","color":"white"}]
tag @a[scores={buy=1..}] add e22_buyed
scoreboard players set @a[scores={buy=1..}] buy 0
schedule function main:event/24/tick 5t
