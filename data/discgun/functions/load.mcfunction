
# スコアボード作成
    scoreboard objectives add D.Gun_Throw minecraft.dropped:minecraft.crossbow
    scoreboard objectives add D.Gun_Shot minecraft.used:minecraft.crossbow
    scoreboard objectives add D.Gun_Sneak minecraft.custom:minecraft.sneak_time
    scoreboard objectives add D.Gun_Time dummy
    scoreboard objectives add D.Gun_Range dummy
    scoreboard objectives add D.Gun_Speed dummy
    scoreboard objectives add D.Gun_Temp dummy
    scoreboard objectives add D.Gun_Recursion dummy
    scoreboard objectives add D.Gun_Delay dummy
    scoreboard objectives add D.Gun_Ammo dummy
    scoreboard objectives add D.Gun_Spin dummy
    scoreboard objectives add D.Gun_InvCheck dummy
    scoreboard objectives add D.Gun_ShotPos dummy
    scoreboard objectives add D.Gun_Charge dummy

# ゲームルール
# 1: リコイル
    scoreboard objectives add D.Gun_Gamerule1 dummy
    scoreboard objectives add D.Gun_Spread dummy

# リロード用
    scoreboard objectives add D.Gun_R.Disc dummy

# スコアIDだ
    scoreboard objectives add D.Gun_Pl.IDCore dummy
    scoreboard objectives add D.Gun_Pl.ID dummy
    scoreboard objectives add D.Gun_En.ID dummy
    scoreboard objectives add D.Gun_Mo.ID dummy

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    kill @e[type=area_effect_cloud,tag=Chuz.Vector0]
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
    
# チャンク読み込み
    forceload add 100000 100000

# シュル箱
    execute unless block 100001 0 100000 light_blue_shulker_box run setblock 100001 0 100000 light_blue_shulker_box
    execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock

# 時たま使い回されるスコアボード
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Col_Check_Temp dummy
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Calc dummy

    scoreboard objectives add Chuz.F.Check_X dummy
    scoreboard objectives add Chuz.F.Check_Y dummy
    scoreboard objectives add Chuz.F.Check_Z dummy

# 時たま使い回されるチーム
    team add No_Collision
    team modify No_Collision collisionRule never

# やぶ台のレシピ
    # モザンビーク
