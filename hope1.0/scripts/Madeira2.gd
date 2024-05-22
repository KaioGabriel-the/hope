extends Area2D

@export var madeira: InvItem

func _on_body_entered(body):
	if body is Player:
		body.collect(madeira)
		queue_free()
	



