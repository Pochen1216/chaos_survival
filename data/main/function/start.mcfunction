

#spec
team add spec
team modify spec prefix {"text":"[旁觀]","color":"gray"}
team modify spec color gray
team join spec @a[gamemode=spectator]
tag @a[team=!spec] add pl
tp @a[team=spec] @e[limit=1,tag=m_cen]

execute as @a at @s run playsound minecraft:block.bell.use

clear @a
scoreboard players set @a score 0
scoreboard players set @a deaths 0
tag @a remove win
tag @a remove sowin

execute as @a run scoreboard players set @s settings 0
scoreboard players reset @a settings
tag @e[type=marker,tag=m_cen] add in_game

#info
scoreboard objectives setdisplay sidebar info
scoreboard objectives setdisplay list score

#all_timer
execute as @e[type=marker,tag=m_cen] run scoreboard players set @s all_timer 0
schedule function main:system/all_timer 60s

#tp
execute as @a[team=!spec] at @e[limit=1,tag=m_cen] run spreadplayers ~ ~ 0 100 true @s
advancement revoke @a from minecraft:story/root
advancement revoke @a from minecraft:adventure/root
advancement revoke @a from minecraft:nether/root
advancement revoke @a from minecraft:end/root
advancement revoke @a from minecraft:husbandry/root

advancement revoke @a from main:root
advancement grant @a only main:root


#給飽成就
#advancement grant @a only main:misson/9
#advancement grant @a only main:misson/10
#advancement grant @a only main:misson/25/be_hit
#advancement grant @a only main:misson/25/hit
#advancement grant @a only main:misson/29
#advancement grant @a only main:misson/32
#advancement grant @a only main:misson/33
#advancement grant @a only main:misson/38
#advancement grant @a only main:misson/39
#advancement grant @a only main:misson/40
#advancement grant @a only main:misson/43
#advancement grant @a only main:misson/49




#給工具
give @a[team=!spec] minecraft:stone_sword 1
give @a[team=!spec] minecraft:stone_pickaxe[enchantments={'minecraft:efficiency':3}] 1
give @a[team=!spec] minecraft:stone_axe[enchantments={'minecraft:efficiency':3}] 1
give @a[team=!spec] minecraft:stone_shovel 1
give @a[team=!spec] bread 16
effect give @a saturation 10 100 true
effect give @a instant_health 1 100 true
effect give @a resistance 10 4 false

gamerule keepInventory true
execute at @e[limit=1,tag=m_cen] run spawnpoint @a

xp set @a 0 levels


#免燒
scoreboard objectives add cc_iron dummy
scoreboard objectives add cc_gold dummy
scoreboard objectives add cc_copper dummy

scoreboard players set @a cc_iron 0
scoreboard players set @a cc_gold 0
scoreboard players set @a cc_copper 0

#清大廳
execute as @e[type=minecraft:marker,limit=1,tag=m_cen] at @s run fill ~-5 ~10 ~-5 ~6 ~13 ~6 air


#forceload

execute at @e[limit=1,tag=m_cen] run forceload add ~ ~

#tellraw

#[系統]遊戲開始!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u904a\u6232\u958b\u59cb!","color":"white"}]
#[系統]將在30秒後 指派第一項任務!
tellraw @a ["",{"text":"[\u7cfb\u7d71]","color":"gold"},{"text":"\u5c07\u572830\u79d2\u5f8c \u6307\u6d3e\u7b2c\u4e00\u9805\u4efb\u52d9!","color":"white"}]
schedule function main:system/misson_countdown 30s
execute as @e[limit=1,tag=m_cen] store result score @e[type=marker,limit=1,tag=m_cen] misson_num run random value 1..60

tellraw @a[gamemode=creative] [{"text":"[提示]遊戲中使用/trigger admin可開啟管理員面板","color":"gray"}]
#execute as @e[limit=1,tag=m_cen] store result score @e[type=marker,limit=1,tag=m_cen] misson_num run random roll 1..50

gamemode survival @a[team=!spec]
time set day
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule doImmediateRespawn true

bossbar set minecraft:misson_timer players @a
title @a times 20 80 10

#p_misson

advancement revoke @a from main:p_misson/1

scoreboard objectives add p_missonA dummy
scoreboard objectives add p_missonB dummy
scoreboard objectives add p_missonC dummy

scoreboard players set @a p_missonA 0
scoreboard players set @a p_missonB 0
scoreboard players set @a p_missonC 0

function main:p_misson/tick

#event
scoreboard objectives add event_countdown dummy
scoreboard players operation @e[tag=m_cen,tag=do_event,limit=1] event_countdown = @e[tag=m_cen,tag=do_event,limit=1] event_period


scoreboard objectives add d_cooldown dummy

#item_age
scoreboard objectives add item_age dummy
schedule function main:system/clean_item 1t

#adv.
advancement revoke @a from main:hidden/root



#sp: for misson 18,47

scoreboard objectives add armor_value armor
scoreboard objectives add lv_now level

