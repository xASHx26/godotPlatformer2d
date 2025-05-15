extends Node2D



const speed =60
var direction =1
@onready var ray_castright2 = $RayCastright
@onready var ray_castleft2 = $RayCastleft
@onready var animated_sprite2 = $AnimatedSprite2D




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(ray_castleft2.is_colliding()):
		direction = 1
		animated_sprite2.flip_h=false
	if(ray_castright2.is_colliding()):
		direction= -1
		animated_sprite2.flip_h=true
	
	position.x+=direction*speed*delta


func _on_coin_body_entered(body):
	queue_free()
