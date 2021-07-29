scoreboard objectives add ForwardSpread dummy

execute unless score #Rand_X ForwardSpread = #Rand_X ForwardSpread store result score #Rand_X ForwardSpread run seed
scoreboard players set #Rand_A ForwardSpread 48271
scoreboard players set #Rand_M ForwardSpread 2147483647

scoreboard players set #2 ForwardSpread 2
scoreboard players set #10000 ForwardSpread 10000
scoreboard players set #1000 ForwardSpread 1000

execute unless entity 0-0-0-0-a run summon minecraft:area_effect_cloud 0 0 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, UUID: [I; 0, 0, 0, 10]}
#execute unless entity 0-0-0-0-a run summon minecraft:armor_stand 0 0 0 {Marker:1b,Small:1b,UUIDLeast:10L,UUIDMost:0L}