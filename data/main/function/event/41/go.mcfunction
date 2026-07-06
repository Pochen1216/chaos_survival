

scoreboard objectives add e41 dummy
scoreboard players set @a e41 0
execute as @a[team=!spec] at @s run summon marker ~ ~ ~ {Tags:[e41,immute_misson_kill,misson]}
scoreboard players set @e[type=marker,tag=e41] e41 0

function main:event/41/rp

# Reset the counter

scoreboard players remove @a[team=!spec] e41 1
execute as @a[team=!spec,scores={e41=0}] run tag @s add temp1_e41
execute as @a[team=!spec] run scoreboard players add @a[tag=temp1_e41] e41 1
tag @a remove temp1_e41




execute as @e[tag=e41,type=marker,scores={e41=1}] at @s run tp @a[team=!spec,scores={e41=1}] @s
execute as @e[tag=e41,type=marker,scores={e41=2}] at @s run tp @a[team=!spec,scores={e41=2}] @s
execute as @e[tag=e41,type=marker,scores={e41=3}] at @s run tp @a[team=!spec,scores={e41=3}] @s
execute as @e[tag=e41,type=marker,scores={e41=4}] at @s run tp @a[team=!spec,scores={e41=4}] @s
execute as @e[tag=e41,type=marker,scores={e41=5}] at @s run tp @a[team=!spec,scores={e41=5}] @s
execute as @e[tag=e41,type=marker,scores={e41=6}] at @s run tp @a[team=!spec,scores={e41=6}] @s
execute as @e[tag=e41,type=marker,scores={e41=7}] at @s run tp @a[team=!spec,scores={e41=7}] @s
execute as @e[tag=e41,type=marker,scores={e41=8}] at @s run tp @a[team=!spec,scores={e41=8}] @s
execute as @e[tag=e41,type=marker,scores={e41=9}] at @s run tp @a[team=!spec,scores={e41=9}] @s
execute as @e[tag=e41,type=marker,scores={e41=10}] at @s run tp @a[team=!spec,scores={e41=10}] @s
execute as @e[tag=e41,type=marker,scores={e41=11}] at @s run tp @a[team=!spec,scores={e41=11}] @s
execute as @e[tag=e41,type=marker,scores={e41=12}] at @s run tp @a[team=!spec,scores={e41=12}] @s
execute as @e[tag=e41,type=marker,scores={e41=13}] at @s run tp @a[team=!spec,scores={e41=13}] @s
execute as @e[tag=e41,type=marker,scores={e41=14}] at @s run tp @a[team=!spec,scores={e41=14}] @s


kill @e[tag=e41,type=marker]
tag @a remove e41
