execute store result storage cb filter.time int 1 run scoreboard players get .time cb
data modify storage cb jobs set value []
function cb:internal/schedule/cut_tasks with storage cb filter

execute store result score .jobs cb run data get storage cb jobs
#execute if score .jobs cb matches 0 run say ERROR, NO JOBS
execute if score .jobs cb matches 1.. run function cb:internal/schedule/loop_jobs

tp 00000063-0000-0077-0000-006300000062 0 0 0