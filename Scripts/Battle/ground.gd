extends Node2D

@onready var map = $Map
@onready var player = $Player


func _ready():
	start_battle()

"""
Setting position of Player and Enemies
"""
func start_battle():
	"Setting the player's default position in battle"
	player.origin = Vector2(1,1)
	player.position = map.map_to_local(player.origin)
	


func _on_player_set_position(new_pos):
	"Origin takes the current position of the player in the grid"
	player.origin += new_pos
	"Then sents to the player the new position with x and y coordinates"
	player.position =map.map_to_local(player.origin)
