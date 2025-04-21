extends Area2D 
class_name Ball

var speed = 100
var direction = 100

func _physics_process(delta):
	speed += delta  
