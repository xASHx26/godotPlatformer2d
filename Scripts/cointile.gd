
func _on_body_entered(body):
	# Check if the colliding body belongs to layer 4
	if body.collision_layer == 4:
		# Do something when colliding with layer 4
		print("Collided with layer 4!")
