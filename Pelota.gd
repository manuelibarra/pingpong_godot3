extends RigidBody2D

var direccion=1
var velocidad=300
var reset=false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	linear_velocity.x=velocidad*direccion # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _draw():
	draw_circle(Vector2(0,0),5,Color(1,1,1))


func _physics_process(delta):
	linear_velocity.x=velocidad*direccion


func _on_Ball_body_entered(body):
	if body.is_in_group("Player"):
		#print("entro")
		direccion*= -1
	# Replace with function body.

func _integrate_forces(state):
	if reset:
		direccion *= -1
		state.transform.origin=Vector2(318,167)
		reset=false
 
