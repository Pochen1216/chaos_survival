


execute as @a store success score @s cc_iron run clear @s raw_iron 1
execute as @a store success score @s cc_gold run clear @s raw_gold 1
execute as @a store success score @s cc_copper run clear @s raw_copper 1


execute as @a[scores={cc_iron=1..}] run give @s iron_ingot
execute as @a[scores={cc_gold=1..}] run give @s gold_ingot
execute as @a[scores={cc_copper=1..}] run give @s copper_ingot





