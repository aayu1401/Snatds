extends Spatial
var turn=0;
var diceface=0;
onready var pathplayer=[$"Path/among us",$"Path/among us2"]
var a=-1
var b=-1
func _ready():
	$board/diceroll3.hide()
	$board/diceroll1.hide()
	
func _on_dice1_pressed():
	$board/diceroll1.show()
	$board/dice.hide()
	$board/diceroll1.play("diceroll",false)
		
func _on_dice3_pressed():
	$board/diceroll3.show()
	$board/dice2.hide()
	$board/diceroll3.play("diceroll",false)
	 
func _on_diceroll3_animation_finished():
	randomize()
	diceface=randi()%6
	$board/diceroll3.hide()
	$board/dice2.show()
	$board/dice2.set_frame(diceface) 
	
	if turn%2!=0:
		if b==-1 && diceface==1:
			b+=diceface
			var pathpoint=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathpoint
		elif b>=0:
			b+=diceface
			var pathpoint=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathpoint
	turn+=1

	

func _on_diceroll1_animation_finished():
	$board/diceroll1.stop()
	randomize()
	diceface=randi()%6
	$board/diceroll1.hide()
	$board/dice.show()
	$board/dice.set_frame(diceface) 
	if turn%2==0:
		if a==-1 && diceface==1:
			a+=diceface
			var pathpoint=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathpoint
		elif a>=0:
			a+=diceface
			var pathpoint=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathpoint
			if a==3:
				$tds.show()
				randomize()
				var c=randi()%2
				$tds/popup/truth.set_frame(c)
				if $tds/popup/Done.pressed:
					$tds.hide()
					a=44
					var pathchange=$Path.get_curve().get_point_position(a)
					pathplayer[turn%2].translation=pathchange
				elif $tds/popup/Pass.pressed:
					$tds.hide()
			elif a==3:
				$tds.show()
				randomize()
				var c=randi()%2
				$tds/popup/truth.set_frame(c)
				if $tds/popup/Done.pressed:
					$tds.hide()
					a=44
					var pathchange=$Path.get_curve().get_point_position(a)
					pathplayer[turn%2].translation=pathchange
				elif $tds/popup/Pass.pressed:
					$tds.hide()
				 
				
				
				 
			
			
	turn+=1




