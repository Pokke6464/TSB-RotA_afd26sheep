#> asset:object/40003.scor_magic_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/40003/tick

#> Private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 一定間隔で回転
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players add $Interval Temporary 15
    scoreboard players operation $Interval Temporary %= $19 Const
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick < @s 40003.RemoveTimer run function asset:object/40003.scor_magic_circle/tick/spin
    scoreboard players reset $Interval Temporary

# 消滅のアニメーション
    execute if score @s General.Object.Tick = @s 40003.RemoveTimer run data merge entity @s {start_interpolation:0, interpolation_duration:5, transformation:{scale:[0.0f,0.0f,0.0f]}}

# 消滅
    execute if score @s General.Object.Tick >= @s 40003.KillTimer run kill @s
