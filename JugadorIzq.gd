extends KinematicBody2D

#creamos variables
var velocidad=300
var direccion=Vector2.ZERO #direccion=Vector2(0,0). Se guarda las direcciones no los valores

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta:float)->void:
	direccion.y=0
	#dependiendo si presiona la tecla W o X desplaza arriba o abajo
	if Input.is_key_pressed(KEY_W):
		direccion.y=-1
	elif Input.is_key_pressed(KEY_X):
		direccion.y=1
	# move_and_slide--> Este método mueve el cuerpo a lo largo de un vector dado 
	# y se detendrá inmediatamente si se detecta una colisión con otro cuerpo
	move_and_slide(direccion*velocidad)
