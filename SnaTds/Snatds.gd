extends Spatial
var turn=0;
func _ready():
	$"board (1)/diceroll".hide()





func _on_dice_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed==true:
			if turn!=0:
				$"board (1)/diceroll".show()
				$"board (1)/dice".hide()
				$"board (1)/diceroll".play("diceroll")
				
				
			
	
