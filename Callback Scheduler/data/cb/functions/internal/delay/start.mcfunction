scoreboard players operation #temp cb = .time cb
execute store result score #temp1 cb run data get storage cb in.ticks
execute store result storage cb load.time int 1 run scoreboard players operation #temp cb += #temp1 cb

data modify storage cb load.command set from storage cb in.command
data modify storage cb load.selector set from storage cb in.selector
data modify storage cb tasks append from storage cb load
data remove storage cb load