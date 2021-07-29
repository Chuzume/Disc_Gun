scoreboard players operation #vexZ ForwardSpread = #distanceC ForwardSpread

scoreboard players operation #Y ForwardSpread = #vexY ForwardSpread
scoreboard players operation #Y ForwardSpread *= #pitchCos ForwardSpread
scoreboard players operation #tmp ForwardSpread = #vexZ ForwardSpread
scoreboard players operation #tmp ForwardSpread *= #pitchSin ForwardSpread
scoreboard players operation #Y ForwardSpread -= #tmp ForwardSpread

scoreboard players operation #Z ForwardSpread = #vexY ForwardSpread
scoreboard players operation #Z ForwardSpread *= #pitchSin ForwardSpread
scoreboard players operation #tmp ForwardSpread = #vexZ ForwardSpread
scoreboard players operation #tmp ForwardSpread *= #pitchCos ForwardSpread
scoreboard players operation #Z ForwardSpread += #tmp ForwardSpread
scoreboard players operation #Z ForwardSpread /= #10000 ForwardSpread

scoreboard players operation #X ForwardSpread = #vexX ForwardSpread
scoreboard players operation #X ForwardSpread *= #yawCos ForwardSpread
scoreboard players operation #tmp ForwardSpread = #Z ForwardSpread
scoreboard players operation #tmp ForwardSpread *= #yawSin ForwardSpread
scoreboard players operation #X ForwardSpread += #tmp ForwardSpread

scoreboard players operation #tmp ForwardSpread = #vexX ForwardSpread
scoreboard players operation #tmp ForwardSpread *= #yawSin ForwardSpread
scoreboard players operation #Z ForwardSpread *= #yawCos ForwardSpread
scoreboard players operation #Z ForwardSpread -= #tmp ForwardSpread

scoreboard players operation #X ForwardSpread /= #10000 ForwardSpread
scoreboard players operation #Y ForwardSpread /= #10000 ForwardSpread
scoreboard players operation #Z ForwardSpread /= #10000 ForwardSpread

execute anchored eyes run tp 0-0-0-0-a ^ ^ ^
execute store result score #playerX ForwardSpread run data get entity 0-0-0-0-a Pos[0] 10000
execute store result score #playerY ForwardSpread run data get entity 0-0-0-0-a Pos[1] 10000
execute store result score #playerZ ForwardSpread run data get entity 0-0-0-0-a Pos[2] 10000

scoreboard players operation #playerX ForwardSpread += #X ForwardSpread
scoreboard players operation #playerY ForwardSpread += #Y ForwardSpread
scoreboard players operation #playerZ ForwardSpread += #Z ForwardSpread

execute store result entity 0-0-0-0-a Pos[0] double 0.0001 run scoreboard players get #playerX ForwardSpread
execute store result entity 0-0-0-0-a Pos[1] double 0.0001 run scoreboard players get #playerY ForwardSpread
execute store result entity 0-0-0-0-a Pos[2] double 0.0001 run scoreboard players get #playerZ ForwardSpread