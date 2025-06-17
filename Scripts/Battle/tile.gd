extends Node2D

enum allTypes {Normal, Grass}
var id = Vector2()
var tile_position = Vector2.ZERO

@export var currentType : allTypes
func _ready():
	#Changes the type of panels (for now, it's just the texture)
	match(currentType):
		1: #Grass
			$Sprite.play("grass")
