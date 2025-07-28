

scoreboard objectives add temp2 dummy
scoreboard players set n20 temp2 20
scoreboard players operation @s temp2 = @e[limit=1,type=marker,tag=m_cen] misson_countdown
scoreboard players operation @s temp2 /= n20 temp2

tellraw @s [{"text":"[\u4efb\u52d9]","color":"aqua"},{"text":"根據你的選擇，你需要被僵直",color:white},{"score":{name:"@s",objective:temp2},color:gold},{"text":"秒",color:white}]

scoreboard players operation @s d_cooldown = @e[limit=1,type=marker,tag=m_cen] misson_countdown

tag @s add win

#[系統]@a[tag=win]贏得了這回合!
function main:system/win_tellraw
execute as @a at @s run playsound minecraft:block.beacon.deactivate


scoreboard players add @a[tag=win] score 1



function main:system/misson_end

