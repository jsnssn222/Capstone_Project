  extends Area2D 

#SPEED is a variable that determines how fast the player moves
var SPEED = 210

func _physics_process(delta):
	 if Input.is_action_pressed("p1_move_up"):
		 global_position.y = global_position.y - SPEED * delta
	 if Input.is_action_pressed("p1_move_down"):
		 global_position.y = global_position.y + SPEED * delta
	 global_position.y = clamp(global_position.y, 0, 500)
func _on_Naruto_area_entered(area):
	 #divide by 15,half the paddle to see if its hitting the upper of paddle or lower
	if area is Ball:
		area.direction.x *=1
		var ball_angle = area.global_position.y - global_positon.y
		if ball_angle > 0:
			  area.direction .y += 1
		elif  ball_angle < 0:
			area.direction.y -= 1
		else:
			area.direction.y = 0
