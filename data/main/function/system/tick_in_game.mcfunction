
scoreboard players operation 目前時間 info = @e[tag=m_cen,limit=1] all_timer
scoreboard players operation 目標勝利次數 info = @e[tag=m_cen,limit=1] target

effect give @a night_vision infinite 2 true

execute as @e[type=minecraft:marker,limit=1,tag=m_cen] at @s run setblock ~ ~-1 ~ test_block

execute as @a[scores={deaths=1..}] run scoreboard players add @s d_cooldown 400
#[系統]你因死亡，受到了20秒的僵直懲罰!
execute as @a[scores={deaths=1..}] run tellraw @s ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4f60\u56e0\u6b7b\u4ea1\uff0c\u53d7\u5230\u4e8620\u79d2\u7684\u50f5\u76f4\u61f2\u7f70!","color":"white"}]


execute as @a[scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[scores={d_cooldown=1..}] run function main:system/death_penalty
execute as @a[scores={d_cooldown=1..}] run scoreboard players remove @s d_cooldown 1

execute as @a[scores={d_cooldown=..0}] run attribute @s minecraft:jump_strength base reset


#cut_clean
execute if entity @e[tag=m_cen,tag=cut_clean] run function main:system/cut_clean/tick

#event

scoreboard players remove @e[tag=m_cen,tag=do_event] event_countdown 1
execute if entity @e[tag=m_cen,tag=do_event,scores={event_countdown=..0}] run function main:event/go
execute as @e[tag=m_cen,tag=do_event,scores={event_countdown=..0}] run scoreboard players operation @s event_countdown = @s event_period


#倒數bossbar
execute if score @e[tag=m_cen,limit=1] misson_countdown matches 0.. store result bossbar minecraft:misson_timer value run scoreboard players get @e[tag=m_cen,limit=1] misson_countdown
execute if score @e[tag=m_cen,limit=1] misson_countdown matches 0.. run scoreboard players remove @e[tag=m_cen,limit=1] misson_countdown 1

#admin
scoreboard players enable @a admin
execute as @a[scores={admin=1}] run tellraw @s [{"text":"-----------------------------------","color":"dark_red"},"\n",{"text":"管理員面板(僅OP可使用)","color":"dark_aqua"},"\n",{"text":"改變下個任務編號(僅可在任務間隔使用) -> ","color":"white"},{"text":"<點我>","color":"light_purple","click_event":{"action":"suggest_command","command":"/scoreboard players set @e[tag=m_cen,limit=1] misson_num"}},{"text":"\n改變勝利目標分 ->","color":"white"},{"text":" "},{"text":"<點我>","color":"light_purple","click_event":{"action":"suggest_command","command":"/scoreboard players set @e[tag=m_cen,limit=1] target"}},{"text":"\n強制結束遊戲 -> ","color":"white"},{"text":"<點我>","color":"light_purple","click_event":{"action":"suggest_command","command":"/function main:end"}},"\n",{"text":"-----------------------------------\n","color":"dark_red"}]
execute as @a[scores={admin=1}] run scoreboard players set @s admin 0
#-----------------------------------
#管理員面板(僅OP可使用)
#改變下個任務編號(僅可在任務間隔使用) -> <點我>
#改變勝利目標分 -> <點我>
#強制結束遊戲 -> <點我>
#-----------------------------------
#展示中央座標
execute as @a unless score @s d_cooldown matches 1.. run title @s actionbar [{"text":"中央座標:(","color":"light_purple"},{"color":"light_purple","score":{"objective":"cen_x","name":"@e[type=marker,limit=1,tag=m_cen]"}},{"color":"light_purple","text":","},{"color":"light_purple","score":{"objective":"cen_z","name":"@e[type=marker,limit=1,tag=m_cen]"}},{"color":"light_purple","text":")"}]
execute as @a if score @s d_cooldown matches 1.. run scoreboard players operation @s d_sec = @s d_cooldown
execute as @a if score @s d_cooldown matches 1.. run scoreboard players operation @s d_sec /= n20 d_sec
execute as @a if score @s d_cooldown matches 1.. run title @s actionbar [{"text":"中央座標:(","color":"light_purple"},{"color":"light_purple","score":{"objective":"cen_x","name":"@e[type=marker,limit=1,tag=m_cen]"}},{"color":"light_purple","text":","},{"color":"light_purple","score":{"objective":"cen_z","name":"@e[type=marker,limit=1,tag=m_cen]"}},{"color":"light_purple","text":")"},{"text":"  "},{"text":"死亡僵直: ",color:"red"},{score:{"objective":"d_sec",name:"@s"},color:gold,bold:true}]


#event22
effect give @a[tag=e22_res] resistance 1 1 true









