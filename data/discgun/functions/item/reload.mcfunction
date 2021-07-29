# 投げた武器は何かな
    tag @s add Chuz.This
    execute anchored eyes positioned ^ ^ ^0.05 as @e[type=item,distance=..200,sort=nearest,limit=1] run function discgun:entity/thrown_item/reload_item
    tag @s remove Chuz.This