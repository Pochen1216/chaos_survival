
scoreboard players operation 目前時間 info = @e[tag=m_cen,limit=1] all_timer
scoreboard players operation 目標勝利次數 info = @e[tag=m_cen,limit=1] target

effect give @a night_vision infinite 2 true


execute as @a[scores={deaths=1..}] run scoreboard players set @s d_cooldown 400
#[系統]你因死亡，受到了20秒的僵直懲罰!
execute as @a[scores={deaths=1..}] run tellraw @s ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4f60\u56e0\u6b7b\u4ea1\uff0c\u53d7\u5230\u4e8620\u79d2\u7684\u50f5\u76f4\u61f2\u7f70!","color":"white"}]


execute as @a[scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[scores={d_cooldown=1..}] run function main:system/death_penalty
execute as @a[scores={d_cooldown=1..}] run scoreboard players remove @s d_cooldown 1

execute as @a[scores={d_cooldown=0}] run attribute @s minecraft:jump_strength base reset


#cut_clean
execute if entity @e[tag=m_cen,tag=cut_clean] run function main:system/cut_clean/tick

#event

scoreboard players remove @e[tag=m_cen,tag=do_event] event_countdown 1
execute if entity @e[tag=m_cen,tag=do_event,scores={event_countdown=..0}] run function main:event/go
execute as @e[tag=m_cen,tag=do_event,scores={event_countdown=..0}] run scoreboard players operation @s event_countdown = @s event_period


#倒數bossbar
execute if score @e[tag=m_cen,limit=1] misson_countdown matches 0.. store result bossbar minecraft:misson_timer value run scoreboard players get @e[tag=m_cen,limit=1] misson_countdown
execute if score @e[tag=m_cen,limit=1] misson_countdown matches 0.. run scoreboard players remove @e[tag=m_cen,limit=1] misson_countdown 1

