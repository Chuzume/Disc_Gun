
# X軸
    tag @s[tag=Col_Hit_X] add Chuz.HitWall
    execute if entity @s[tag=Col_Hit_X] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
    execute if entity @s[tag=Col_Hit_X] run function discgun:move
    tag @s[tag=Col_Hit_X] remove Col_Hit_X

# Y軸 
    tag @s[tag=Col_Hit_Y] add Chuz.HitWall
    execute if entity @s[tag=Col_Hit_Y] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
    execute if entity @s[tag=Col_Hit_Y] run function discgun:move
    tag @s[tag=Col_Hit_Y] remove Col_Hit_Y

# Z軸
    tag @s[tag=Col_Hit_Z] add Chuz.HitWall
    execute if entity @s[tag=Col_Hit_Z] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
    execute if entity @s[tag=Col_Hit_Z] at @s run tp @s ~ ~ ~ ~180 ~
    execute if entity @s[tag=Col_Hit_Z] run function discgun:move
    tag @s[tag=Col_Hit_Z] remove Col_Hit_Z