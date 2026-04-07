#> asset:mob/40001.sheep_chan_of_revenge/register
# @within asset:mob/alias/40001/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 40001
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"逆襲のひつじしゃん","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"無限に湧いてでてくるひつじしゃん。","color":"white"}','{"text":"殴って足場にしてしまおう。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 250000
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

# フィールド
# ダメージ
    # 接触
        data modify storage asset:mob Field.Damage.Contact set value 40.0f
    # 巨大羊毛
        data modify storage asset:mob Field.Damage.GiantWool set value {Beginning:20f,Clash:90f}
    # ジャンプ
        data modify storage asset:mob Field.Damage.Jump set value 100f
    # ジャンプの衝撃波
        data modify storage asset:mob Field.Damage.JumpShockWave set value 65f
