
# 時間経過で消える
    #scoreboard players add @s D.Gun_Time 1
    #kill @e[scores={D.Gun_Time=20..}]


# パーティクル
    particle minecraft:dust 1 0.5 0 0.35 ~ ~ ~ 0 0 0 0 1 force
    particle minecraft:dust 1 0.75 0 0.35 ~ ~ ~ 0 0 0 0 1 force
    
# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={D.Gun_Recursion=1..,D.Gun_Range=1..}] run scoreboard players operation @s D.Gun_Recursion = @s D.Gun_Speed

# 前進
    execute if entity @s[scores={D.Gun_Recursion=1..,D.Gun_Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# プレイヤーから出るまでヒット判定ナシ
    execute at @a[distance=2..] if score @s D.Gun_En.ID = @p D.Gun_Pl.ID run tag @s add D.Gun_NoHitUser

# スコア減算
    scoreboard players remove @s D.Gun_Recursion 1
    scoreboard players remove @s D.Gun_Range 1

# プレイヤーの衝突判定
    execute if entity @s[tag=D.Gun_NoHit,tag=D.Gun_NoHitUser] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#discgun:unhurtable,type=!ender_dragon,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#discgun:unhurtable,sort=nearest,limit=1] at @s run function discgun:entity/wingman_bullet/hit

# 対ドラゴン
    execute at @s at @e[type=minecraft:ender_dragon,team=!null,distance=..6,sort=nearest,limit=1] run function discgun:entity/wingman_bullet/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #discgun:no_collision run function discgun:entity/wingman_bullet/break
    
# 再帰
    execute if entity @s[scores={D.Gun_Recursion=1..,D.Gun_Range=1..}] at @s run function discgun:entity/wingman_bullet/move

# キル
    execute if entity @s[scores={D.Gun_Range=0}] run kill @s