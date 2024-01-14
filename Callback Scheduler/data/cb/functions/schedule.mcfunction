data modify storage cb entities set value []
$execute as $(selector) run function cb:internal/gu/generate_id_list
$schedule function cb:internal/schedule/callback $(ticks)t append
$data modify storage cb in set value {ticks:$(ticks),command:"$(command)"}
function cb:internal/schedule/start