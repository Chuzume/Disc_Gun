execute if score @s D.Gun_Mo.ID = @e[tag=D.Gun_Return,limit=1,sort=nearest] D.Gun_Mo.ID run tag @s add D.Gun_Rotater_Return
execute if entity @s[tag=D.Gun_Rotater_Return] as @a at @e[type=area_effect_cloud,tag=D.Gun_Rotater_Return] if score @s D.Gun_P.ID = @e[type=area_effect_cloud,limit=1,sort=nearest] D.Gun_ScoreID facing entity @s eyes run teleport @e[type=area_effect_cloud,limit=1,sort=nearest] ~ ~ ~ ~ ~

#tp @s ~ ~ ~ ~ ~2