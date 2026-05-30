
title @a subtitle [{"text":"棉花糖","color":"blue"}]
title @a title ""


tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"吃掉棉花糖可立即獲得1分，每次隨機任務開始有33%的機率多一分與10%的機率融化","color":"white"}]
tellraw @a ["",{"text":"[\u4e8b\u4ef6]","color":"blue"},{"text":"若此事件前已有棉花糖則清除","color":"white"}]

clear @a minecraft:white_dye[custom_name=[{"text":"棉花糖","italic":false,"color":"#ad9494"}],lore=[[{"text":"我覺得大家到最後都會忘記這東西","italic":false}]],food={nutrition:3,saturation:1,can_always_eat:1b},consumable={}]
give @a[team=!spec] minecraft:white_dye[custom_name=[{"text":"棉花糖","italic":false,"color":"#ad9494"}],lore=[[{"text":"我覺得大家到最後都會忘記這東西","italic":false}]],food={nutrition:3,saturation:1,can_always_eat:1b},consumable={}]

advancement revoke @a only main:misson/e39

scoreboard objectives add marsh dummy
scoreboard players set @a marsh 1

tag @a[team=!spec] add marsh
