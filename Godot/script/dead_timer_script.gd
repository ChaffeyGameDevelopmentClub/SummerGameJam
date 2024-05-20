extends Node2D

#NOTES
#player_ID
#if player_ID = 1
	#$CoinPlayer1.start()

func _ready():
	$CoinPlayer1.start()

#Checks if players coins are less than 10
func _on_coin_player_1_timeout()-> void:
	#player 1 coins
	#if player1 is dead:
	if AdrianGlobal.coin1 <= 50:
		AdrianGlobal.coin1 += 1
		print(AdrianGlobal.coin1)
		#player 2 coins
	if AdrianGlobal.coin2 <= 50:
		AdrianGlobal.coin2 += 1
		print(AdrianGlobal.coin2)
		#player 3 coins
	if AdrianGlobal.coin3 <= 50:
		AdrianGlobal.coin3 += 1
		print(AdrianGlobal.coin3)
		#player 4 coins
	if AdrianGlobal.coin4 <= 50:
		AdrianGlobal.coin4 += 1
		print(AdrianGlobal.coin4)



func _on_button_pressed():
	if AdrianGlobal.coin1 >= 10:
		AdrianGlobal.emit_signal("bomb_press")
		AdrianGlobal.coin1 -= 10
		$CoinPlayer1.start()
	else:
		print("NO WORK")
	$PlayerCoin1.text = "%02d:" % AdrianGlobal.coin1
	$PlayerCoin2.text = "%03d:" % AdrianGlobal.coin2
