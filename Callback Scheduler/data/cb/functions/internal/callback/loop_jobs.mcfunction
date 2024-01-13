execute store result score .entities cb run data get storage cb jobs[-1].entities
#execute if score .entities cb matches 0 run say ERROR, JOB HAS NO ENTITIES! THIS IS REDUNDANT
execute if score .entities cb matches 1.. run function cb:internal/callback/loop_entities

data remove storage cb jobs[-1]
scoreboard players remove .jobs cb 1
execute if score .jobs cb matches 1.. run function cb:internal/callback/loop_jobs