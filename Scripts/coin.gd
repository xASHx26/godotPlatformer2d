extends Area2D


@onready var gamemanager = %gamemanager
@onready var animation_player = $AnimationPlayer

var inr=0

func _on_body_entered(body):
	
	gamemanager.add_point()
	animation_player.play("pickup")
	
