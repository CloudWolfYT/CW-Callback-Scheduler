data modify entity 00000063-0000-0077-0000-006300000062 Pos set from storage cb jobs[0].Pos

execute store result score .entities cb run data get storage cb jobs[0].entities
#execute if score .entities cb matches 0 run say ERROR, JOB HAS NO ENTITIES! THIS IS REDUNDANT
execute if score .entities cb matches 1.. at 00000063-0000-0077-0000-006300000062 run function cb:internal/schedule/loop_entities

data remove storage cb jobs[0]
scoreboard players remove .jobs cb 1
execute if score .jobs cb matches 1.. run function cb:internal/schedule/loop_jobs