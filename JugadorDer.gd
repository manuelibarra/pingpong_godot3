extends KinematicBody2D

var velocidad=300
var direccion=Vector2.ZERO
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta:float)->void:
	direccion.y=0
	#direccion.y=Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	if Input.is_key_pressed(KEY_UP):
		direccion.y=-1
	elif Input.is_key_pressed(KEY_DOWN):
		direccion.y=1
	move_and_slide(direccion*velocidad)
