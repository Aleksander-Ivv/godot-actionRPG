extends KinematicBody2D

var speed = 200
var items = 0

func pick(item):
	items += 1
	get_parent().get_parent().update_label(items)

func _ready():
	pass # Replace with function body.

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("up"):
		velocity.y -= speed
	if Input.is_action_pressed("down"):
		velocity.y += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	move_and_slide(velocity)	
