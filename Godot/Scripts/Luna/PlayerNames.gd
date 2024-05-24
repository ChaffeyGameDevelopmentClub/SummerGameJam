extends Node

var player1Name : String
@onready var player1Text = $Player1Name
var player2Name : String
@onready var player2Text = $Player2Name
var player3Name : String
@onready var player3Text = $Player3Name
var player4Name : String
@onready var player4Text = $Player4Name

var typed : int

var playerName :String = ''
var playerNameNum = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if playerName.length() <=3:
		if playerNameNum == 1:
			player1Name = playerName
			player1Text.set_text(player1Name)
		if playerNameNum == 2:
			player2Name = playerName
			player2Text.set_text(player2Name)
		if playerNameNum == 3:
			player3Name = playerName
			player3Text.set_text(player3Name)
		if playerNameNum == 4:
			player4Name = playerName
			player4Text.set_text(player4Name)

func _on_texture_button_a_pressed():
	#A
	if playerName.length() <3:
		playerName += 'A'


func _on_texture_button_delete_pressed():
	#Del
	var len = playerName.length()
	playerName = playerName.substr(0,len-1)


func _on_texture_button_enter_pressed():
	#enter
	playerName = ''
	print(playerName)
	playerNameNum += 1
	
	#del testing
	#if playerNameNum == 5:
		#playerNameNum = 1


func _on_texture_button_b_pressed():
	#b
	if playerName.length() <3:
		playerName += 'B'

func _on_texture_button_c_pressed():
	#C
	if playerName.length() <3:
		playerName += 'C'

func _on_texture_button_d_pressed():
	#D
	if playerName.length() <3:
		playerName += 'D'

func _on_texture_button_e_pressed():
	#E
	if playerName.length() <3:
		playerName += 'E'

func _on_texture_button_f_pressed():
	#F
	if playerName.length() <3:
		playerName += 'F'

func _on_texture_button_g_pressed():
	#G
	if playerName.length() <3:
		playerName += 'G'

func _on_texture_button_h_pressed():
	#H
	if playerName.length() <3:
		playerName += 'H'

func _on_texture_button_i_pressed():
	#I
	if playerName.length() <3:
		playerName += 'I'

func _on_texture_button_j_pressed():
	#J
	if playerName.length() <3:
		playerName += 'J'

func _on_texture_button_k_pressed():
	#K
	if playerName.length() <3:
		playerName += 'K'

func _on_texture_button_l_pressed():
	#L
	if playerName.length() <3:
		playerName += 'L'

func _on_texture_button_m_pressed():
	#M
	if playerName.length() <3:
		playerName += 'M'

func _on_texture_button_n_pressed():
	#N
	if playerName.length() <3:
		playerName += 'N'

func _on_texture_button_o_pressed():
	#O
	if playerName.length() <3:
		playerName += 'O'
func _on_texture_button_p_pressed():
	#P
	if playerName.length() <3:
		playerName += 'P'
func _on_texture_button_q_pressed():
	#Q
	if playerName.length() <3:
		playerName += 'Q'
func _on_texture_button_r_pressed():
	#R
	if playerName.length() <3:
		playerName += 'R'
func _on_texture_button_s_pressed():
	#S
	if playerName.length() <3:
		playerName += 'S'
func _on_texture_button_t_pressed():
	#T
	if playerName.length() <3:
		playerName += 'T'
func _on_texture_button_u_pressed():
	#U
	if playerName.length() <3:
		playerName += 'U'
func _on_texture_button_v_pressed():
	#V
	if playerName.length() <3:
		playerName += 'V'
func _on_texture_button_w_pressed():
	#W
	if playerName.length() <3:
		playerName += 'W'
func _on_texture_buttonx_pressed():
	#X
	if playerName.length() <3:
		playerName += 'X'
func _on_texture_button_y_pressed():
	#Y
	if playerName.length() <3:
		playerName += 'Y'
func _on_texture_button_z_pressed():
	#Z
	if playerName.length() <3:
		playerName += 'Z'
