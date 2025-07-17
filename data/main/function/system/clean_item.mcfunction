

execute as @e[type=item] store result score @s item_age run data get entity @s Age
execute as @e[type=item] if score @s item_age matches ..4800 run data modify entity @s Age set value 4801


schedule function main:system/clean_item 100t
