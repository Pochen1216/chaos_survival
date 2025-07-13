
#[系統]你因死亡，受到了20秒的僵直懲罰!
tellraw @s ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4f60\u56e0\u6b7b\u4ea1\uff0c\u53d7\u5230\u4e8620\u79d2\u7684\u50f5\u76f4\u61f2\u7f70!","color":"white"}]

effect give @s minecraft:slowness 20 255 true
effect give @s minecraft:blindness 20 1 true
effect give @s mining_fatigue 20 2 true

effect give @s minecraft:resistance 30 4 false

scoreboard players set @s deaths 0

