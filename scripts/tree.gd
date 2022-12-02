extends StaticBody2D


func _ready():
	randomize()
	var a = int(rand_range(1, 3))
	$Sprite.texture = load("res://sprites/tree%s.png" %str(a))
