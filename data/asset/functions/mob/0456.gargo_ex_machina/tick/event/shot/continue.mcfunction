#> asset:mob/0456.gargo_ex_machina/tick/event/shot/continue
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/shot/

# スコアを戻す
    scoreboard players set @s CO.EventTimer 1

# 射撃回数減算
    scoreboard players remove @s CO.PreTimer 1

# アニメーション再生
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/shot_target_spin/tween {duration:10, to_frame: 10}
