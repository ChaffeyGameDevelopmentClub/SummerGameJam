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
	player_coin_1.text = str(Global.coin1)
	player_coin_2.text = str(Global.coin2)
	player_coin_3.text = str(Global.coin3)
	player_coin_4.text = str(Global.coin4)
	if Input.is_action_just_released("Punch_1"):
			if Global.coin1 >= 10:
				Global.emit_signal("Punch_1")
				Global.coin1 -= 10
				$CoinPlayer1.start()
			else:
				print("NO WORK")


#Checks if players coins are less than 10
func _on_coin_player_1_timeout()-> void:
	#player 1 coins
	#if player1 is dead:
	if Global.coin1 <= 49:
		Global.coin1 += 1
		print(Global.coin1)
		#player 2 coins
	if Global.coin2 <= 49:
		Global.coin2 += 1
		print(Global.coin2)
		#player 3 coins
	if Global.coin3 <= 49:
		Global.coin3 += 1
		print(Global.coin3)
		#player 4 coins
	if Global.coin4 <= 49:
		Global.coin4 += 1
		print(Global.coin4)
