#> asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/tick
#
# 眷属召喚
#
# @within function asset:mob/40001.sheep_chan_of_revenge/tick/skill_active

# 溶ける
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/melt

# 移動
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/prediction_1
    execute if score @s General.Mob.Tick matches 110 run tp @s ~ ~150 ~ 0 0
    execute if score @s General.Mob.Tick matches 115 run function asset:mob/40001.sheep_chan_of_revenge/tick/util/emerge

# アニメーション
    execute if score @s General.Mob.Tick matches 130 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/tween {duration:70, to_frame:36}
    execute if score @s General.Mob.Tick matches 190 as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run function animated_java:sheep_avenger/animations/transform/tween {duration:70, to_frame:35}

# 演出
    execute if score @s General.Mob.Tick matches 135 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/summon_magic_circle
    execute if score @s General.Mob.Tick matches 145..265 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/particle
    execute if score @s General.Mob.Tick matches 260 as @e[limit=5] run playsound entity.sheep.ambient hostile @a ~ ~ ~ 5 0.8

# 召喚
    execute if score @s General.Mob.Tick matches 270 run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/summon_servants

# 終了
    execute if score @s General.Mob.Tick matches 300.. run function asset:mob/40001.sheep_chan_of_revenge/tick/skill/call_servants/end
