
# 全ディスクを片付ける
    execute as @e[tag=D.Gun_Common] run function discgun:entity/disc/death
    tellraw @s {"text":"CODE: DELETE PROJECTILES","color":"red"}
    stopsound @a
