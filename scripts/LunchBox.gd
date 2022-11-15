extends Area2D


func _on_LunchBox_body_entered(body):
	queue_free()
	Global.score += 1
