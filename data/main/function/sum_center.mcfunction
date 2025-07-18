# executed by player who gen the center


execute at @s run summon minecraft:marker ~ ~ ~ {Tags:[m_cen,cut_clean]}
execute at @s run summon armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:0,CustomName:[{text:"地圖中心點",bold:true,color:gold}],CustomNameVisible:1b,Health:1,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Tags:["a_cen"],attributes:[{id:max_health,base:1f}]}

execute as @e[type=minecraft:marker,limit=1,tag=m_cen] store result score @s cen_x run data get entity @s Pos[0]
execute as @e[type=minecraft:marker,limit=1,tag=m_cen] store result score @s cen_z run data get entity @s Pos[2]

execute as @e[type=minecraft:marker,limit=1,tag=m_cen] at @s run worldborder center ~ ~
execute as @e[type=minecraft:marker,limit=1,tag=m_cen] at @s run setworldspawn ~ ~ ~


#[系統]中央點生成完畢!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u4e2d\u592e\u9ede\u751f\u6210\u5b8c\u7562!","color":"white"}]



#設定基本值

scoreboard players set @e[type=marker,limit=1,tag=m_cen] target 5
scoreboard players set @e[type=marker,limit=1,tag=m_cen] event_period 1200

