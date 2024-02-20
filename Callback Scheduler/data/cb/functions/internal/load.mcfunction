function cb:internal/gu/load
scoreboard objectives add cb dummy

## Zero the schedualer and clear tasks
scoreboard players set .time cb 0
data remove storage cb tasks
schedule clear cb:internal/callback/start

execute unless entity 00000063-0000-0077-0000-006300000062 in minecraft:overworld run function cb:internal/load_once