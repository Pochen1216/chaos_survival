#-------------------------------------------
#試問: 格林威治子午線(本初經線)沒有通過哪一個國家？
#[葡萄牙] [阿爾及利亞] [布吉納法索]
#-------------------------------------------



tellraw @a [{"text":"-------------------------------------------\n試問: 格林威治子午線(本初經線)沒有通過哪一個國家？","color":"gray"},"\n",{"text":"[葡萄牙]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set 1"}},{"text":" ","color":"gold"},{"text":"[阿爾及利亞]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},{"text":" ","color":"gold"},{"text":"[布吉納法索]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},"\n",{"text":"-------------------------------------------","color":"gray"}]