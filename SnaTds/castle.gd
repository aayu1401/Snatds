extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var  coming_out = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if coming_out:
		$"Lenny the Sanake  Highpoly".translation= lerp($"Lenny the Sanake  Highpoly".translation, $Spatial2.translation, 0.1)
	if Input.is_action_pressed("ui_down"):
		coming_out= true
	
	
	
	pass


