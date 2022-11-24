extends Area2D


func _ready():
	$AnimatedSprite.play()


func _on_Banana_body_entered(body):
	queue_free()
	Global.bananas += 1
