gamerule showDeathMessages false
execute as @e[tag=D.Gun_Common,sort=nearest,limit=1] at @a if score @s D.Gun_En.ID = @p D.Gun_Pl.ID run tag @p add Chuz.This
tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" のディスクで真っ二つにされた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true