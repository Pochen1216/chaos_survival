
#settings

#偵測創造模式
execute as @a unless score @s settings matches 0 if entity @s[gamemode=!creative,name=!Pochen1216AuA] unless entity @e[tag=in_game] run tellraw @s ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u5207\u63db\u81f3\u5275\u9020\u6a21\u5f0f\u4ee5\u8a2d\u5b9a","color":"white"}]
execute as @a unless score @s settings matches 0 if entity @s[gamemode=creative] run function main:settings_code
execute as @a unless score @s settings matches 0 if entity @s[name=Pochen1216AuA] run function main:settings_code
#重置settings
execute as @a run scoreboard players set @s settings 0
execute unless entity @e[tag=in_game] run scoreboard players enable @a settings




execute if entity @e[tag=in_game] run function main:system/tick_in_game

#new pl

execute as @a[team=!spec,tag=!pl] if entity @e[tag=in_game] run team join spec

execute as @a[team=!spec,tag=!pl] if entity @e[tag=in_game] run gamemode spectator @s

#execute as @a[team=!spec,tag=!pl] if entity  run tp @s @e[tag=m_cen,tag=!in_game,limit=1]

execute as @e[tag=m_cen,tag=!in_game] at @s run tp @a[team=!spec,tag=!pl] ~ ~12 ~


execute as @a[team=!spec,tag=!pl] if entity @e[tag=m_cen,tag=!in_game] run gamemode adventure

tag @a add pl






worldborder set 10000000