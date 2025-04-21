extends Area2D 

#SPEED is a variable that determines how fast the player moves
var SPEED = 210

func _physics_process(delta):
	 if Input.is_action_pressed("p2_move_up"):
		 global_position.y = global_position.y - SPEED * delta
	 if Input.is_action_pressed("p2_move_down"):
		 global_position.y = global_position.y + SPEED * delta
	 global_position.y = clamp(global_position.y, 0, 500)
