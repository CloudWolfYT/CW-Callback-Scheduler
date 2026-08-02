## Reset auxiliary entity
kill 00000063-0000-0077-0000-006300000062
summon marker 0 0 0 {Tags:["cb.pos"],UUID:[I;99,119,99,98]}
forceload add 0 0

## Zero the scheduler and clear tasks
scoreboard players set .time cb -2147483648
data remove storage cb tasks
schedule clear cb:internal/callback/start
