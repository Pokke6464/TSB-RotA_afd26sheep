#> asset:object/40000.giant_wool/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/40000/hit_entity

# 回転し始め
    execute if entity @s[tag=40000.BeginningSpin] run function asset:object/40000.giant_wool/hit_entity/beginning_hit

# 高速回転
    execute if entity @s[tag=40000.HighSpeedSpinning] run function asset:object/call.m {method:kill}
