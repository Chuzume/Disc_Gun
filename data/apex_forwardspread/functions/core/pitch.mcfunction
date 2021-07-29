tp 0-0-0-0-a 0.0 10.0 0.0 0.0 0.0

execute store result entity 0-0-0-0-a Rotation[0] float 1 run data get entity @s Rotation[1]

execute as 0-0-0-0-a at @s run tp @s ^ ^ ^1

execute store result score #pitchSin ForwardSpread run data get entity 0-0-0-0-a Pos[0] -10000
execute store result score #pitchCos ForwardSpread run data get entity 0-0-0-0-a Pos[2] 10000