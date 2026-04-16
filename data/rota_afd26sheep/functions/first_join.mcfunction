#> rota_afd26sheep:first_join
#
# データパックを導入した初回のみ実行されるfunction
#
# @within function rota_afd26sheep:tick

# このfunctionを二度と実行されないようにする 
    data modify storage rota: FirstJoin set value true

# 1秒後にメッセージを表示
    schedule function rota_afd26sheep:message 20t replace
    
# 追加されたスコアを生成
    function #rota_afd26sheep:mob_load
    function #rota_afd26sheep:object_load
