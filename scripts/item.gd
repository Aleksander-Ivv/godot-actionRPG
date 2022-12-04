extends Node2D

var items = ""

func set_item(item_name):
	$Sprite.texture = load("res://sprites/items/%s.png" %item_name)
	
	
func _input(event):
	if event.is_action_pressed("e_click"):
		var pl = get_parent().get_parent().get_player()
		if abs(pl.position.x - position.x) < 32 and abs(pl.position.y - position.y) < 32:
			get_parent().remove_child(self)
			pl.pick(self)
	
	
func _ready():
	pass # Replace with function body.

