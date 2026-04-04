#> asset:object/9000.gem_ring_shockwave/attack/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/9000/attack

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの衝撃波に吹き飛ばされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual

# HurtTimeが0ならダメージ
    function api:data_get/hurt_time
    execute if data storage api: {HurtTime:0s} run function api:damage/

# 終了
    function api:damage/reset
    function asset:object/super.method
