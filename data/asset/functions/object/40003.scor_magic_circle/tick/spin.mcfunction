#> asset:object/40003.scor_magic_circle/tick/spin
#
#
#
# @within function asset:object/40003.scor_magic_circle/tick/

# 回転のカウント
    scoreboard players add @s 40003.SpinCount 1

# 回転
    data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={40003.SpinCount=1}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:4.71f}
    execute if entity @s[scores={40003.SpinCount=2}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:3.14f}
    execute if entity @s[scores={40003.SpinCount=3}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:1.57f}
    execute if entity @s[scores={40003.SpinCount=4}] run data modify entity @s transformation.left_rotation set value {axis:[0f,0f,1f],angle:0f}

# Scaleだけ別で設定し直す
    data modify entity @s transformation.scale set from storage asset:context this.Scale

# 回転カウントのリセット
    execute if entity @s[scores={40003.SpinCount=4..}] run scoreboard players reset @s 40003.SpinCount
