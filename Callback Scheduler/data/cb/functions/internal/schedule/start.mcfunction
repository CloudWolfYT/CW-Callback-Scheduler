data modify storage cb entities set value []
function cb:internal/schedule/macros with storage cb in

execute store result score #temp1 cb run data get storage cb in.ticks
scoreboard players operation #temp cb = .time cb
execute store result storage cb load.time int 1 run scoreboard players operation #temp cb += #temp1 cb

data modify storage cb load.command set from storage cb in.command
data modify storage cb load.entities set from storage cb entities
data modify storage cb tasks append from storage cb load