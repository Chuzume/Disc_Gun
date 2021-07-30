#初期Motion0だったらタグ付与
execute store result score @s Chuz.F.Check_X run data get entity @s Motion[0] 1000
execute if score @s Chuz.F.Check_X matches -5..5 run tag @s add Chuz.NoX_Check

execute store result score @s Chuz.F.Check_Y run data get entity @s Motion[1] 1000
execute if score @s Chuz.F.Check_Y matches 0 run tag @s add Chuz.NoY_Check

execute store result score @s Chuz.F.Check_Z run data get entity @s Motion[2] 1000
execute if score @s Chuz.F.Check_Z matches -5..5 run tag @s add Chuz.NoZ_Check

tag @s[tag=!Chuz.No_F.Check] add Chuz.No_F.Check