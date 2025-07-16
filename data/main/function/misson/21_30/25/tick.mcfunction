


#give @a baked_potato[custom_name=[{"text":"HOT POTATO","color":"dark_red","bold":true}],lore=[[{"text":"你需要盡快將它脫手!","italic":false}],[{"text":"它只能藉由攻擊別人傳遞!","italic":false}],[{"text":"同時，你的能力獲得提升，","italic":false}],[{"text":"並有傳送到別人的能力!","italic":false}]],enchantment_glint_override=true,consumable={consume_seconds:1000,animation:none,has_consume_particles:0b},food={nutrition:1,saturation:1},unbreakable={},custom_data={hot_potato:1}]

#傳遞
execute as @a[scores={be_hit_pl=1}] at @s if entity @a[scores={hot_potato=1,hit_pl=1,},distance=..6] run function main:misson/21_30/25/pass

#馬鈴薯本薯
clear @a[scores={hot_potato=0}] baked_potato[custom_name=[{"text":"HOT POTATO","color":"dark_red","bold":true}],lore=[[{"text":"你需要盡快將它脫手!","italic":false}],[{"text":"它只能藉由攻擊別人傳遞!","italic":false}],[{"text":"同時，你的能力獲得提升，","italic":false}],[{"text":"並有傳送到別人的能力!","italic":false}]],enchantment_glint_override=true,consumable={consume_seconds:1000,animation:none,has_consume_particles:0b},food={nutrition:1,saturation:1},unbreakable={},custom_data={hot_potato:1}]
execute as @a[scores={hot_potato=1}] store success score @s detect_potato run clear @s baked_potato[custom_name=[{"text":"HOT POTATO","color":"dark_red","bold":true}],lore=[[{"text":"你需要盡快將它脫手!","italic":false}],[{"text":"它只能藉由攻擊別人傳遞!","italic":false}],[{"text":"同時，你的能力獲得提升，","italic":false}],[{"text":"並有傳送到別人的能力!","italic":false}]],enchantment_glint_override=true,consumable={consume_seconds:1000,animation:none,has_consume_particles:0b},food={nutrition:1,saturation:1},unbreakable={},custom_data={hot_potato:1}] 0
execute as @a[scores={hot_potato=1}] if score @s detect_potato matches 0 run give @s baked_potato[custom_name=[{"text":"HOT POTATO","color":"dark_red","bold":true}],lore=[[{"text":"你需要盡快將它脫手!","italic":false}],[{"text":"它只能藉由攻擊別人傳遞!","italic":false}],[{"text":"同時，你的能力獲得提升，","italic":false}],[{"text":"並有傳送到別人的能力!","italic":false}]],enchantment_glint_override=true,consumable={consume_seconds:1000,animation:none,has_consume_particles:0b},food={nutrition:1,saturation:1},unbreakable={},custom_data={hot_potato:1}] 1


#鬼常駐效果
effect give @a[scores={hot_potato=1}] glowing 1 0 true
effect give @a[scores={hot_potato=1}] speed 1 1 true
effect give @a[scores={hot_potato=1}] resistance 1 1 true
team join 25 @a[scores={hot_potato=1}]
team leave @a[scores={hot_potato=0}]

#清除成就
advancement revoke @a only main:misson/25/be_hit
advancement revoke @a only main:misson/25/hit

#TP System
execute as @a[scores={hot_potato=0}] run scoreboard players reset @s 25_tp
execute as @a[scores={hot_potato=1,25_tp=..1}] run scoreboard players enable @s 25_tp
execute as @a[scores={hot_potato=1,25_tp=100..}] run function main:misson/21_30/25/tp
scoreboard players remove @a 25_tp 2

#timeout
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run function main:misson/21_30/25/end
execute if score @e[tag=m_cen,limit=1] misson_countdown matches ..1 run return 0


scoreboard players set @a hit_pl 0
scoreboard players set @a be_hit_pl 0



schedule function main:misson/21_30/25/tick 2t

