# Get Location
tp 00000063-0000-0077-0000-006300000062 ~ ~ ~
data modify storage cb load.Pos set from entity 00000063-0000-0077-0000-006300000062 Pos
tp 00000063-0000-0077-0000-006300000062 0 0 0

# Get Time
scoreboard players operation #temp cb = .time cb
execute store result score #temp1 cb run data get storage cb in.ticks
execute store result storage cb load.time int 1 run scoreboard players operation #temp cb += #temp1 cb

# Load Task
data modify storage cb load.command set from storage cb in.command
data modify storage cb load.entities set from storage cb entities
data modify storage cb tasks append from storage cb load