extends RigidBody2D

var tracking = false
var startPos = Vector2()

func _input(evt):
	if( evt is InputEventMouseButton and evt.button_index == MOUSE_BUTTON_LEFT):
		if(evt.is_pressed()):
			tracking = true
			startPos = evt.position
		else:
			tracking = false
			
			var kickDir = startPos - evt.position
			
			#set gravity_scale to 1
			gravity_scale = 1
	
			
			#apply a force in the kickDr direction * 300
			apply_force(kickDir * 300)
