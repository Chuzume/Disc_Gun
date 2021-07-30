# Posをスコア化、1tick後との差を求める
# 各軸でそれぞれ違うタグ付与

    execute unless score @s Col_Check_X matches -2147483648..2147483647 store result score @s Col_Check_X run data get entity @s Pos[0] 50
    execute unless score @s Col_Check_Y matches -2147483648..2147483647 store result score @s Col_Check_Y run data get entity @s Pos[1] 50
    execute unless score @s Col_Check_Z matches -2147483648..2147483647 store result score @s Col_Check_Z run data get entity @s Pos[2] 50

    execute store result score $Col_Temp Col_Check_X run data get entity @s Pos[0] 1000
    execute store result score $Col_Temp Col_Check_Y run data get entity @s Pos[1] 1000
    execute store result score $Col_Temp Col_Check_Z run data get entity @s Pos[2] 1000

    scoreboard players operation @s Col_Check_X -= $Col_Temp Col_Check_X
    scoreboard players operation @s Col_Check_Y -= $Col_Temp Col_Check_Y
    scoreboard players operation @s Col_Check_Z -= $Col_Temp Col_Check_Z

    scoreboard players operation @s Col_Check_Temp = @s Col_Check_X
    scoreboard players operation @s Col_Check_Temp += @s Col_Check_Y
    scoreboard players operation @s Col_Check_Temp += @s Col_Check_Z

# Chuz.No(X/Y/Z)_Checkで各軸のチェックを無効化
    execute if entity @s[tag=!Chuz.NoX_Check] if score @s Col_Check_X matches 0 run tag @s add Col_Hit_X
    execute if entity @s[tag=!Chuz.NoY_Check] if score @s Col_Check_Y matches 0 run tag @s add Col_Hit_Y
    execute if entity @s[tag=!Chuz.NoZ_Check] if score @s Col_Check_Z matches 0 run tag @s add Col_Hit_Z

    scoreboard players operation @s Col_Check_X = $Col_Temp Col_Check_X
    scoreboard players operation @s Col_Check_Y = $Col_Temp Col_Check_Y
    scoreboard players operation @s Col_Check_Z = $Col_Temp Col_Check_Z

