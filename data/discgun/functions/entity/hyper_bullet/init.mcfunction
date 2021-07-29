#function mozambiqueforwardspread:api/circle_run
execute facing entity @e[type=area_effect_cloud,tag=D.Gun_Spread,distance=..100] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=area_effect_cloud,tag=D.Gun_Spread,distance=..100]
tag @s add D.Gun_H.Bullet
tag @s remove D.Gun_H.BulletInit
scoreboard players set @s D.Gun_Speed 40
scoreboard players set @s D.Gun_Range 400

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s D.Gun_En.ID = @p D.Gun_Pl.ID