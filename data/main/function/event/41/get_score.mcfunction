
scoreboard players add @a[tag=!e41,team=!spec] e41 1

tag @r[tag=!e41,team=!spec] add temp_e41

execute as @a[limit=1,tag=temp_e41,team=!spec] at @s run scoreboard players operation @e[limit=1,type=marker,sort=nearest,tag=e41] e41 = @s e41




tag @a[limit=1,tag=temp_e41,team=!spec] add e41

tag @a[limit=1,team=!spec,tag=temp_e41] remove temp_e41
