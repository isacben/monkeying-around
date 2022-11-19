extends Node2D

signal game_over

func _ready():
	$LunchBoxBubble.visible = false
	$LunchBoxBubble/Message.visible = false


func _on_Area2D_body_entered(body):
	if Global.score == 10:
		$LunchBoxBubble/LunchBox.visible = false
		$LunchBoxBubble/Message.visible = true
		emit_signal("game_over")
	
	$LunchBoxBubble.visible = true


func _on_Area2D_body_exited(body):
	$LunchBoxBubble.visible = false
