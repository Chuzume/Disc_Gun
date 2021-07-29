
# おそらく計算
    scoreboard players operation #spreadC ForwardSpread = $spread ForwardSpread
    scoreboard players operation #spreadC ForwardSpread *= #1000 ForwardSpread
    scoreboard players operation #spreadC/2 ForwardSpread = #spreadC ForwardSpread
    scoreboard players operation #spreadC/2 ForwardSpread /= #2 ForwardSpread

    scoreboard players operation #distanceC ForwardSpread = $distance ForwardSpread
    scoreboard players operation #distanceC ForwardSpread *= #1000 ForwardSpread

    scoreboard players operation #r^2 ForwardSpread = #spreadC/2 ForwardSpread
    scoreboard players operation #r^2 ForwardSpread *= #spreadC/2 ForwardSpread

    function apex_forwardspread:core/pitch
    function apex_forwardspread:core/yaw
    function apex_forwardspread:core/circle_randomizer
    function apex_forwardspread:core/vec
