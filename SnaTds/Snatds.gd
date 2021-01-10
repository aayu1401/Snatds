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
	$board/diceroll3.stop()
	randomize()
	diceface=randi()%6
	$board/diceroll3.hide()
	$board/dice2.show()
	$board/dice2.set_frame(diceface) 
	print(turn)
	print(b)
	print(diceface)
	
	if turn%2==1:
		if b==-1 && diceface==0:
			b+=diceface+1
			var pathpoint=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathpoint
		elif b>=0:
			b+=diceface+1
			var pathpoint=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathpoint
			if b==3||b==11||b==34||b==99||b==57||b==14||b==63||b==41:
				$tds.show()
	turn+=1

	

func _on_diceroll1_animation_finished():
	$board/diceroll1.stop()
	randomize()
	diceface=randi()%6
	$board/diceroll1.hide()
	$board/dice.show()
	$board/dice.set_frame(diceface) 
	print(turn)
	print(a)
	print(diceface)
	if turn%2==0:
		if a==-1 && diceface==0:
			a+=diceface+1
			var pathpoint=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathpoint
		elif a>=0:
			a+=diceface+1
			var pathpoint=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathpoint
			if a==11 || a==34||a==11||a==99||a==57||a==14||a==63||a==41:
				$tds.show()
			
	turn+=1






func _on_Done_pressed():
	$tds.hide()
	if turn%2==0:
		if a==3:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=44
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		elif a==11:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=49
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		elif a==57:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=96
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		elif a==34:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=66
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		else:
			pass
	else:
		if b==3:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=44
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		elif b==11:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=49
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		elif b==57:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=96
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		elif b==34:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=66
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		else:
			pass
	   

func _on_Pass_pressed():
	$tds.hide()
	if turn%2==0:
		if a==99:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=34
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		elif a==14:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=8
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		elif a==63:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=16
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		elif a==41:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			a=24
			var pathchange=$Path.get_curve().get_point_position(a)
			pathplayer[turn%2].translation=pathchange
		else:
			pass
	else:
		if b==99:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=34
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		elif b==14:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=8
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		elif b==63:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=16
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		elif b==41:
			$tds.show()
			randomize()
			var c=randi()%2
			$tds/popup/truth.set_frame(c)
			b=24
			var pathchange=$Path.get_curve().get_point_position(b)
			pathplayer[turn%2].translation=pathchange
		else:
			pass
