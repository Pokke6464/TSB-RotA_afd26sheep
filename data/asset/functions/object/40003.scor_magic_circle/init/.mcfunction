#> asset:object/40003.scor_magic_circle/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/40003/init

# 消滅時間設定
    execute store result score @s 40003.RemoveTimer store result score @s 40003.KillTimer run data get storage asset:context this.RemoveTimer
    scoreboard players add @s 40003.KillTimer 5
