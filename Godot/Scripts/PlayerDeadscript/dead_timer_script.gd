extends Node2D


@export var player_coin_1: Label
@export var player_coin_2: Label
@export var player_coin_3: Label
@export var player_coin_4: Label

#NOTES
#player_ID
#if player_ID = 1
	#$CoinPlayer1.start()

#Atomatically starts the timer
#may need a fix
func _ready():
	$CoinPlayer1.start()


#updates the labels
func _process(_delta):
	player_coin_1.text = str(AdrianGlobal.coin1)
	player_coin_2.text = str(AdrianGlobal.coin2)
	player_coin_3.text = str(AdrianGlobal.coin3)
	player_coin_4.text = str(AdrianGlobal.coin4)
	
	#Player 1 Input
	if Input.is_action_just_released("DrobBombP1"):
			if AdrianGlobal.coin1 >= 10:
				var location = $"../Player1Cursor".global_position
				AdrianGlobal.emit_signal("bomb_press",location)
				AdrianGlobal.coin1 -= 10
				$CoinPlayer1.start()
			else:
				print("NO WORK")

	#Player 2 Input
	if Input.is_action_just_released("DropBombP2"):
			if AdrianGlobal.coin2 >= 10:
				var location = $"../Player2Cursor".global_position
				AdrianGlobal.emit_signal("bomb_press",location)
				AdrianGlobal.coin2 -= 10
				$CoinPlayer1.start()
			else:
				print("NO WORK")

	#Player 3 Input
	if Input.is_action_just_released("DropBombP3"):
			if AdrianGlobal.coin3 >= 10:
				var location = $"../Player3Cursor".global_position
				AdrianGlobal.emit_signal("bomb_press",location)
				AdrianGlobal.coin3 -= 10
				$CoinPlayer1.start()
			else:
				print("NO WORK")

	#Player 4 Input
	if Input.is_action_just_released("DropBombP4"):
			if AdrianGlobal.coin4 >= 10:
				var location = $"../Player4Cursor".global_position
				AdrianGlobal.emit_signal("bomb_press",location)
				AdrianGlobal.coin4 -= 10
				$CoinPlayer1.start()
			else:
				print("NO WORK")








#Checks if players coins are less than 10
func _on_coin_player_1_timeout()-> void:
	#player 1 coins
	#if player1 is dead:
	if AdrianGlobal.coin1 <= 49:
		AdrianGlobal.coin1 += 1

		#player 2 coins
	if AdrianGlobal.coin2 <= 49:
		AdrianGlobal.coin2 += 1

		#player 3 coins
	if AdrianGlobal.coin3 <= 49:
		AdrianGlobal.coin3 += 1

		#player 4 coins
	if AdrianGlobal.coin4 <= 49:
		AdrianGlobal.coin4 += 1

