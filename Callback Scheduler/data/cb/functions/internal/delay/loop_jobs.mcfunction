data modify entity 00000063-0000-0077-0000-006300000062 Pos set from storage cb jobs[-1].Pos

execute store result score .entities cb run data get storage cb jobs[-1].entities
#execute if score .entities cb matches 0 run say ERROR, JOB HAS NO ENTITIES! THIS IS REDUNDANT
data modify storage cb args.selector set from storage cb jobs[-1].selector
data modify storage cb args.cmd set from storage cb jobs[-1].command
execute at 00000063-0000-0077-0000-006300000062 run function cb:internal/delay/run_cmd with storage cb args

data remove storage cb jobs[-1]
scoreboard players remove .jobs cb 1
execute if score .jobs cb matches 1.. run function cb:internal/delay/loop_jobs