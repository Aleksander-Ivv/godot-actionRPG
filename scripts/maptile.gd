extends Node2D

onready var item = preload("res://scenes/item.tscn")

func get_player():
	return $Player

func _ready():
	
	var items = ["meat", "chiken", "energy", "sword", "fish"]
	
	for i in range(10):
		randomize()
		var a = int(rand_range(0, 5))
		var new_item = item.instance()
		$Items.add_child(new_item)
		new_item.set_item(items[a])
		new_item.position = Vector2(int(rand_range(0, 44*32)), int(rand_range(0, 42*32)))
		
		
