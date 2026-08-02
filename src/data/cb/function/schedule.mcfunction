data modify storage cb entities set value []
$execute as $(selector) run function gu:generate
data modify storage cb entities append from storage gu:main out
$schedule function cb:internal/schedule/callback $(ticks)t append
$data modify storage cb in set value {ticks:$(ticks),command:"$(command)"}
function cb:internal/schedule/start
