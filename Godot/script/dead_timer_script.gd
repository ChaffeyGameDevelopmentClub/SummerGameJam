extends Node2D

#NOTES
#player_ID
#if player_ID = 1
	#$CoinPlayer1.start()

func _ready():
	$CoinPlayer1.start()
	$CoinPlayer2.start()
	$CoinPlayer3.start()
	$CoinPlayer4.start()

#Checks if players coins are less than 10
func _process(delta):
	print(AdrianGlobal.coin1)



func _on_coin_player_1_timeout()-> void:
	if AdrianGlobal.coin1 <= 50:
		AdrianGlobal.coin1 += 1
		print(AdrianGlobal.coin1)
	if AdrianGlobal.coin1 >= 50:
		$CoinPlayer1.stop()





func _on_button_pressed():
	if AdrianGlobal.coin1 >= 10:
		AdrianGlobal.coin1 -= 10
		$CoinPlayer1.start()
	else:
		print("NO WORK")
