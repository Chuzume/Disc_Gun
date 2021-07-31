#まぁまずはアイテムが必要であろう
give @s crossbow{ChuzData:{Reloadable:true,NoOffhand:true,Ammo:35,MaxAmmo:35,AmmoUse:5,CoolTime:0,MaxCoolTime:2,ItemID:SuperDiscGun,RawName:'{"text":"Super Disc Gun","color":"#9003fc","italic":false}'},Charged:1b,display:{Name:'{"text":"Super Disc Gun","color":"#9003fc","italic":false}',Lore:['{"text":" "}', '[{"text":"⚠","color":"red","italic":false},{"text":"取り扱い注意","color":"white","italic":false},{"text":"⚠","color":"red","italic":false}]','{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"呪われてるんじゃないだろうか\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:28,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100d,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

#次回以降も実行するためにレシピ没収
recipe take @s discgun:super_discgun

#なんだこのチェストは！消えてもらおう
clear @s chest 1

#進捗消去
advancement revoke @s only discgun:craft/super_discgun
