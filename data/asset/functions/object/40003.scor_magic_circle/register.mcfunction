#> asset:object/40003.scor_magic_circle/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/40003/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 40003
# フィールド(オプション)
    data modify storage asset:object Field.Color set value 16777215
    data modify storage asset:object Field.Scale set value [5.0f,5.0f,0.01f]
    data modify storage asset:object Field.RemoveTimer set value 60
