$schedule function cb:internal/delay/callback $(ticks)t append
$data modify storage cb in set value {ticks:$(ticks),selector:"$(selector)",command:"$(command)"}
function cb:internal/delay/start