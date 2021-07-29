
# ヒット
    #scoreboard players add @e[type=!#discgun:unhurtable,sort=nearest,limit=1] D.Gun_Temp 1
    execute as @e[type=!#discgun:unhurtable,sort=nearest,limit=1] at @s unless entity @s[gamemode=!adventure,gamemode=!survival] run function discgun:entity/hyper_bullet/hit_damage

# 消失
    tag @s remove D.Gun_NoHit
    function discgun:entity/bullet/break