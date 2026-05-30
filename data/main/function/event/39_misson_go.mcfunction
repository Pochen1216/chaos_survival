

execute if predicate main:chance/1_10 run tag @s remove marsh

execute if entity @s[tag=!marsh] run tellraw @s [{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"你的棉花糖融化了!",color:"white"}]
execute if entity @s[tag=!marsh] run clear @s minecraft:white_dye[custom_name=[{"text":"棉花糖","italic":false,"color":"#ad9494"}],lore=[[{"text":"我覺得大家到最後都會忘記這東西","italic":false}]],food={nutrition:3,saturation:1,can_always_eat:1b},consumable={}]
execute if entity @s[tag=!marsh] as @e[tag=m_cen,limit=1,type=marker] run return 0

execute if predicate main:chance/1_3 run tag @s add marsh_comp
execute if entity @s[tag=marsh_comp] run scoreboard players add @s marsh 1
execute if entity @s[tag=marsh_comp] run tellraw @s [{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"你的棉花糖升值了，目前價值",color:"white"},{"score":{"name":"@s","objective":"marsh"},color:green},{"text":"分",color:"white"}]

tag @s remove marsh_comp

