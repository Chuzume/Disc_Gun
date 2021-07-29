function apex_forwardspread:core/random
scoreboard players operation #vexX ForwardSpread = #Rand_Out ForwardSpread
function apex_forwardspread:core/random
scoreboard players operation #vexY ForwardSpread = #Rand_Out ForwardSpread

# (x^2+y^2) > r^2
scoreboard players operation #tmpX ForwardSpread = #vexX ForwardSpread
scoreboard players operation #tmpX ForwardSpread *= #vexX ForwardSpread

scoreboard players operation #tmpY ForwardSpread = #vexY ForwardSpread
scoreboard players operation #tmpY ForwardSpread *= #vexY ForwardSpread

scoreboard players operation #distance ForwardSpread = #tmpX ForwardSpread
scoreboard players operation #distance ForwardSpread += #tmpY ForwardSpread