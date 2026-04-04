#> asset:object/40000.giant_wool/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/40000/detect_hit_block

# 判定
    execute if entity @s[tag=40000.HighSpeedSpinning] run function asset:object/40000.giant_wool/detect_hit_block/check
