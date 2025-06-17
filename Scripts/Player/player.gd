extends Node2D

var movement = true
var tile_position := Vector2.ZERO
var origin := Vector2.ZERO
signal set_position(pos)

func _input(event):
	"Movement Input"
	if event.is_action_pressed("left"):
		set_position.emit(Vector2(-1,0))
	if event.is_action_pressed("right"):
		set_position.emit(Vector2(1,0))
	if event.is_action_pressed("up"):
		set_position.emit(Vector2(0,-1))
	if event.is_action_pressed("down"):
		set_position.emit(Vector2(0,1))
