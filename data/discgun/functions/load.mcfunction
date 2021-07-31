
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
    scoreboard objectives add D.Gun_R.S.Disc dummy

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
    data modify storage yv:custom_crafter Recipes append value {Pattern:[{Count:1b,Slot:1b,id:"minecraft:stonecutter"},{Count:1b,Slot:2b,id:"minecraft:iron_ingot"},{Count:1b,Slot:10b,id:"minecraft:iron_ingot"},{Count:1b,Slot:11b,id:"minecraft:crossbow",tag:{Damage:0}},{Count:1b,Slot:12b,id:"minecraft:oak_log"},{Count:1b,Slot:20b,id:"minecraft:oak_log"},{Count:1b,Slot:21b,id:"minecraft:redstone_block"}],Result:{Count:1b,Slot:15b,id:"minecraft:crossbow",tag:{AttributeModifiers:[{Amount:-100.0d,AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Operation:0,Slot:"mainhand",UUID:[I;-1325817302,-411482978,-1222952476,823678823]}],Charged:1b,ChuzData:{Ammo:7,AmmoUse:1,CoolTime:0,ItemID:"DiscGun",MaxAmmo:7,MaxCoolTime:2,NoOffhand:1b,RawName:'{"text":"Disc Gun","color":"aqua","italic":false}',Reloadable:1b},CustomModelData:27,Damage:0,HideFlags:7,Unbreakable:1b,display:{Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"絶対危ない\\"","color":"gray","italic":false}'],Name:'{"italic":false,"color":"aqua","extra":[{"text":" "},{"color":"gray","text":"| "},{"italic":false,"color":"gray","text":"7"},{"color":"gray","text":" |"}],"text":"Disc Gun"}'}}}}
    data modify storage yv:custom_crafter Recipes append value {Pattern:[{Count:1b,Slot:1b,id:"minecraft:stonecutter"},{Count:1b,Slot:2b,id:"minecraft:stonecutter"},{Count:1b,Slot:3b,id:"minecraft:stonecutter"},{Count:1b,Slot:10b,id:"minecraft:stonecutter"},{Count:1b,Slot:11b,id:"minecraft:crossbow",tag:{Damage:0}},{Count:1b,Slot:12b,id:"minecraft:oak_log"},{Count:1b,Slot:19b,id:"minecraft:stonecutter"},{Count:1b,Slot:20b,id:"minecraft:oak_log"},{Count:1b,Slot:21b,id:"minecraft:nether_star"}],Result:{Count:1b,Slot:15b,id:"minecraft:crossbow",tag:{AttributeModifiers:[{Amount:-100.0d,AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Operation:0,Slot:"mainhand",UUID:[I;-1325817302,-411482978,-1222952476,823678823]}],Charged:1b,ChuzData:{Ammo:35,AmmoUse:5,CoolTime:0,ItemID:"SuperDiscGun",MaxAmmo:35,MaxCoolTime:2,NoOffhand:1b,RawName:'{"text":"Super Disc Gun","color":"#9003fc","italic":false}',Reloadable:1b},CustomModelData:28,Damage:0,HideFlags:7,Unbreakable:1b,display:{Lore:['{"text":" "}','[{"text":"⚠","color":"red","italic":false},{"text":"取り扱い注意","color":"white","italic":false},{"text":"⚠","color":"red","italic":false}]','{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"呪われてるんじゃないだろうか\\"","color":"gray","italic":false}'],Name:'{"italic":false,"color":"#9003FC","extra":[{"text":" "},{"color":"gray","text":"| "},{"italic":false,"color":"gray","text":"35"},{"color":"gray","text":" |"}],"text":"Super Disc Gun"}'}}}}