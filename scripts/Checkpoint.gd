extends Area2D

var pos : Vector2 = Vector2(0, 0)


func _on_Checkpoint_body_entered(body):
	Global.last_position = self.position
