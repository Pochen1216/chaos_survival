
#-------------------------------------------
#試問: 在「混沌生存」50個任務中，有幾個會傳送人?
#[2] [3] [4]
#3-------------------------------------------

tellraw @a [{"text":"-------------------------------------------","color":"gray"},"\n",{"text":"試問:","bold":true,"underlined":true}," 在「混沌生存」50個任務中，有幾個會傳送人?\n",{"text":"[2]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},{"text":" ","color":"gold"},{"text":"[3]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set 1"}},{"text":" ","color":"gold"},{"text":"[4]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},"\n",{"text":"-------------------------------------------","color":"gray"},"\n "]
