data modify storage cb args.UUID set from storage cb jobs[0].entities[0]
data modify storage cb args.cmd set from storage cb jobs[0].command
function cb:internal/schedule/run_cmd with storage cb args

data remove storage cb jobs[0].entities[0]
scoreboard players remove .entities cb 1
execute if score .entities cb matches 1.. run function cb:internal/schedule/loop_entities