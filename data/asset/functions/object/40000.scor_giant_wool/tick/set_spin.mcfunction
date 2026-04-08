#> asset:object/40000.scor_giant_wool/tick/set_spin
#
# 回転をセットする
#
# @within function
#   asset:object/40000.scor_giant_wool/tick/beginning_spin
#   asset:object/40000.scor_giant_wool/tick/high_speed_spin

# スコアを加算
    scoreboard players add @s 40000.SpinCount 1

# start_interpolationを設定
    data modify entity @s start_interpolation set value 0

# スコアに応じてtansformationをセット
    execute if entity @s[scores={40000.SpinCount=1}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-3.0f,0.0f,0.0f,3.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={40000.SpinCount=2}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,-3.0f,0.0f,0.0f,0.0f,-0.0f,-3.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={40000.SpinCount=3}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,3.0f,0.0f,0.0f,-3.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if entity @s[scores={40000.SpinCount=4}] run data modify entity @s transformation set value [3.0f,0.0f,0.0f,0.0f,0.0f,3.0f,0.0f,0.0f,0.0f,0.0f,3.0f,0.0f,0.0f,0.0f,0.0f,1.0f]

# スコアをリセット
    execute if entity @s[scores={40000.SpinCount=4..}] run scoreboard players reset @s 40000.SpinCount

# 高速回転状態でなければ自身にヒット判定Tagを付与
    execute if entity @s[tag=!40000.HighSpeedSpinning] if entity @p[distance=..5] run tag @s add 40000.BeginningSpin
