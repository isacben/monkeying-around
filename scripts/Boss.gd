extends Node2D

signal game_over

func _ready():
	$LunchBoxBubble.hide()
	$LunchBoxBubble/Message.hide()


func _on_Area2D_body_entered(body):
	if Global.score == 10:
		$LunchBoxBubble/LunchBox.hide()
		$LunchBoxBubble/Message.show()
		emit_signal("game_over")
	else:
		$LunchBoxBubble/LunchBox.show()
		$LunchBoxBubble/Message.hide()
	
	$LunchBoxBubble.show()


func _on_Area2D_body_exited(body):
	$LunchBoxBubble.hide()
