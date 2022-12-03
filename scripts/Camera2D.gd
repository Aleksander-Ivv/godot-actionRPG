extends Camera2D

onready var zoomfactor = 1 # насколько далеко отдаляется камера
onready var zoomspeed = 20
onready var zoomstep = 0.03
onready var factorstep = 0.01

func _ready():
	pass 

func _process(delta):
	zoom.x = lerp(zoom.x, zoomfactor * zoom.x, zoomspeed * delta)
	zoom.y = lerp(zoom.y, zoomfactor * zoom.y, zoomspeed * delta)
	
	zoom.x = clamp(zoom.x, 0.5, 2)
	zoom.y = clamp(zoom.y, 0.5, 2)
	
	if zoomfactor > 1:
		zoomfactor = 1
	elif zoomfactor < 1:
		zoomfactor = 1
		
	print(zoomfactor)	
	

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_WHEEL_UP:
			zoomfactor -= zoomstep
		if event.button_index == BUTTON_WHEEL_DOWN:
			zoomfactor += zoomstep
			
	
	if event is InputEventPanGesture:
#		print(event.delta.y)
		if event.delta.y > 0:
			zoomfactor -= zoomstep
		elif event.delta.y < 0:
			zoomfactor += zoomstep	
#		print(zoomfactor)	
		
