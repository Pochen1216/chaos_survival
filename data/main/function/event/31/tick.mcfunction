
execute as @a[team=!spec,scores={get_damage=1..}] run tellraw @a [{"text":"[\u4e8b\u4ef6]","color":"blue"},{selector:"@s",color:red},{"text":"觸發了","color":white},{text:"恐懼震懾",color:"red"},{"text":"，直接死亡!","color":white}]
execute as @a[team=!spec,scores={get_damage=1..}] run kill @s
execute as @a[team=!spec,scores={get_damage=1..}] run scoreboard players set @s get_damage 0


schedule function main:event/31/tick 5t