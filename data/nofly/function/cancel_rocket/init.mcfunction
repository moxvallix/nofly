data modify storage nofly:cancel_rocket rocket_cancelled set value false
data modify storage nofly:cancel_rocket player.uuid set from entity @s UUID

execute at @s as @n[type=minecraft:firework_rocket,distance=..5] run function nofly:cancel_rocket/kill

execute if data storage nofly:cancel_rocket {rocket_cancelled: true} run function nofly:cancel_rocket/player_feedback