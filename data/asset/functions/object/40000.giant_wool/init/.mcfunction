#> asset:object/40000.giant_wool/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/40000/init

# スピード関連の設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 401
    data modify storage asset:context this.MovePerStep set value 0

# 灰色か否か
    execute if data storage asset:context this{IsGray:true} run tag @s add 40000.IsGray
    # 色を変える
        execute if entity @s[tag=40000.IsGray] run data modify entity @s item.id set value "gray_wool"

# 前進までの時間を短縮するか否か
    execute if data storage asset:context this{IsQuickAttack:true} run tag @s add 40000.IsQuickAttack

# 継承
    function asset:object/super.init
