extends Node2D

#inicializamos puntajes de cada jugador en 0
var jugador1=0
var jugador2=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2DPlayer2_body_entered(body):
	if body.is_in_group("grBAll"):
		print("entro p2")
		jugador1+=1
		reiniciarnivel()
	# Replace with function body.

func _on_Area2DPlayer1_body_entered(body):
	if body.is_in_group("grBAll"):
		print("entro p1")
		jugador2+=1
		reiniciarnivel()
	 # Replace with function body.

func reiniciarnivel():
	$LabPuntajeIzq.text=str(jugador1)
	$LabPuntajeDer.text=str(jugador2)
	$Pelota.reset=true
	print("reiniciando...")

	



