#> asset:object/40000.scor_giant_wool/tick/high_speed_spin
#
#
#
# @within function asset:object/40000.scor_giant_wool/tick/

# 演出
    execute if entity @s[tag=!40000.IsGray] unless block ~ ~-1.7 ~ #lib:no_collision run particle block white_wool ~ ~-1 ~ 0.8 0 0.8 0 10 force @a[distance=..64]
    execute if entity @s[tag=40000.IsGray] unless block ~ ~-1.7 ~ #lib:no_collision run particle block gray_wool ~ ~-1 ~ 0.8 0 0.8 0 10 force @a[distance=..64]
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 0.25 2

# 一定間隔で実行
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const

# 縦回転する
    execute if score $Interval Temporary matches 0 run function asset:object/40000.scor_giant_wool/tick/set_spin

# リセット
    scoreboard players reset $Interval Temporary
