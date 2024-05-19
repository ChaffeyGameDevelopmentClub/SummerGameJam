extends Node2D

#NOTES
#player_ID
#if player_ID = 1
	#$CoinPlayer1.start()
	
#Checks if players coins are less than 10
func _process(delta)-> void:
	$CoinPlayer1.start()
	if AdrianGlobal.coin1 <= 50:
		_on_coin_player_1_timeout()
		print('lol')



func _on_coin_player_1_timeout()-> void:
	AdrianGlobal.coin1 += 1
	print(AdrianGlobal.coin1)
	if AdrianGlobal.coin1 >= 10:
		$CoinPlayer1.stop()


func _on_button_pressed():
	AdrianGlobal.coin1 -= 10
