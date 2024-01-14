data modify storage cb args.selector set from storage cb jobs[-1].selector
data modify storage cb args.cmd set from storage cb jobs[-1].command
function cb:internal/delay/run_cmd with storage cb args

data remove storage cb jobs[-1]
scoreboard players remove .jobs cb 1
execute if score .jobs cb matches 1.. run function cb:internal/delay/loop_jobs