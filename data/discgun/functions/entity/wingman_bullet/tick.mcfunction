
# 
# パーティクル
    execute if entity @s[scores={D.Gun_Range=..399}] run particle minecraft:dust 1 0.5 0 1 ~ ~ ~ 0 0 0 0 1 force
    execute if entity @s[scores={D.Gun_Range=..399}] run particle crit ~ ~ ~ 0 0 0 0 1 force
# 再帰移動  
    function discgun:entity/wingman_bullet/move