#> asset:mob/40001.sheep_chan_of_revenge/_index.d
# @private

#> tag
# @within function asset:mob/40001.sheep_chan_of_revenge/**/**

# 状態
    #declare tag UV5.InAction 行動中
    #declare tag UV5.HealthLess50Per HP50%以下
    #declare tag UV5.IsLatter 後半戦

# スキル
    #declare tag UV5.Skill.GiantWool.Horizontal 巨大羊毛攻撃・水平タイプ
    #declare tag UV5.Skill.GiantWool.Melting 巨大羊毛攻撃・融解タイプ
    #declare tag UV5.Skill.GiantWool.Spread 巨大羊毛攻撃・拡散タイプ
    #declare tag UV5.Skill.Jump ジャンプ攻撃
    #declare tag UV5.Skill.CallServants 眷属召喚

# その他
    #declare tag UV5.Marker.SpawnPoint 召喚位置保存用のマーカー

# AJ関連
    #declare tag 2264.Model
    #declare function animated_java:sheep_avenger/summon
    #declare function animated_java:sheep_avenger/animations/transform/tween
    #declare function animated_java:sheep_avenger/animations/walk/tween
    #declare function animated_java:sheep_avenger/animations/turn/tween
    #declare function animated_java:sheep_avenger/remove/all
