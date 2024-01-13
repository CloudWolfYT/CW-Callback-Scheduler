function cb:gu/load
scoreboard objectives add cb dummy

## Zero the schedualer and clear tasks
scoreboard players set .time cb 0
data remove storage cb tasks
schedule clear cb:internal/callback/start