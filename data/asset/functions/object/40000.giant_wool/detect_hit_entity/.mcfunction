#> asset:object/40000.giant_wool/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/40000/detect_hit_entity

# 回転し始め、または高速回転中のみヒット判定を行う
    execute unless entity @s[tag=!40000.BeginningSpin,tag=!40000.HighSpeedSpinning] if entity @p[distance=..5] run function asset:object/40000.giant_wool/detect_hit_entity/check
