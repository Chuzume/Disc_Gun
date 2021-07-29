
# ヒット
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["D.Gun_HSCheck"]}
    scoreboard players reset @s D.Gun_Range
    execute as @e[type=!#discgun:unhurtable,sort=nearest,limit=1] at @s unless entity @s[gamemode=!adventure,gamemode=!survival] run function discgun:entity/wingman_bullet/hit_damage

# 消失
    tag @s remove D.Gun_NoHit
    function discgun:entity/wingman_bullet/break