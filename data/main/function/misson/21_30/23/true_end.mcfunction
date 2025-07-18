
gamemode survival @a[team=!spec]
scoreboard objectives setdisplay list score
effect give @a resistance 10 4 false
effect give @a instant_health 1 10 true
scoreboard players set @a deaths 0

function main:system/sum_marker/run_tp
function main:system/sum_marker/stop



function main:system/misson_end