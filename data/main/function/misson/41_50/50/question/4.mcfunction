#-------------------------------------------
#試問: 龍貓的片長總共幾分鐘？
#[88] [108] [128]
#-------------------------------------------



tellraw @a [{"text":"-------------------------------------------\n試問: 龍貓的片長總共幾分鐘？","color":"gray"},"\n",{"text":"[88]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set 1"}},{"text":" ","color":"gold"},{"text":"[108]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},{"text":" ","color":"gold"},{"text":"[128]","color":"gold","click_event":{"action":"run_command","command":"trigger respond set -1"}},"\n",{"text":"-------------------------------------------","color":"gray"}]