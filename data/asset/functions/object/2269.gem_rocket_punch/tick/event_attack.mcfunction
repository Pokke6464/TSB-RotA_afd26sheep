#> asset:object/2269.gem_rocket_punch/tick/event_attack
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/

# 移動
    execute if score @s General.Object.Tick matches 209 run tp @s ~ ~0.1 ~ ~ ~-4
    execute if score @s General.Object.Tick matches 210 run tp @s ~ ~-0.2 ~ ~ ~8
    execute if score @s General.Object.Tick matches 211 run tp @s ~ ~0.1 ~ ~ ~-4
    execute if score @s General.Object.Tick matches 209..222 at @s run tp @s ^ ^0.05 ^-0.05
    execute if score @s General.Object.Tick matches 233..236 at @s run tp @s ~ ~ ~ ~ ~1
    execute if score @s General.Object.Tick matches 240..245 at @s run tp @s ~ ~ ~ ~ ~-1
    execute if score @s General.Object.Tick matches 246..255 at @s run tp @s ~ ~ ~ ~ ~-7
    execute if score @s General.Object.Tick matches 256..277 at @s run tp @s ~ ~ ~ ~ ~-15
    execute if score @s General.Object.Tick matches 233..277 at @s run tp @s ^ ^ ^5
    execute if score @s General.Object.Tick matches 233..277 run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 3 force @a[distance=..256]
    execute if score @s General.Object.Tick matches 233..277 run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 3 force @a[distance=..256]

# 攻撃
    execute if score @s General.Object.Tick matches 190 positioned ~ ~-3 ~ rotated ~ 0 run function asset:object/2269.gem_rocket_punch/tick/prediction
    execute if score @s General.Object.Tick matches 233 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 235 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 237 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 239 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 241 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 243 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 245 at @s run function asset:object/2269.gem_rocket_punch/tick/damage

# 演出
    execute if score @s General.Object.Tick matches 209 at @s run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Object.Tick matches 233 at @s run playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.9

# 消滅
    execute if score @s General.Object.Tick matches 277 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 277 run data modify entity @s transformation.scale set value [0.0f,0.0f,0.0f]

# 追撃無しならここでkill
    # execute if score @s[tag=!IsAdditionalAttack] General.Object.Tick matches 280.. run kill @s

## 以降は追撃有りの場合限定
# 落下のタイミングをばらけさせる
    execute if score @s General.Object.Tick matches 281 store result score @s General.Object.Tick run random value 281..300

# ランダムなプレイヤーへ移動して予告表示
    execute if score @s General.Object.Tick matches 300 run function asset:object/2269.gem_rocket_punch/tick/prediction_2

# 再出現
    execute if score @s General.Object.Tick matches 321 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 321 run data modify entity @s transformation.scale set value [8.0f,8.0f,8.0f]

# 落下
    execute if score @s General.Object.Tick matches 321.. run tp @s ~ ~-5 ~

# パーティクル
    execute if score @s General.Object.Tick matches 321.. run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 3 force @a[distance=..256]
    execute if score @s General.Object.Tick matches 321.. run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 3 force @a[distance=..256]

# 爆発して消滅
    execute if score @s General.Object.Tick matches 350.. at @s positioned ~ ~3 ~ run function asset:object/2269.gem_rocket_punch/tick/explosion
