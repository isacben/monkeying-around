extends CanvasLayer


signal start_game
signal game_ended


var seconds : int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.connect("score_changed", self, "update_score")
	Global.connect("bananas_changed", self, "update_bananas")
	var boss = get_tree().get_root().find_node("Boss", true, false)
	boss.connect("game_over", self, "show_game_over")


func update_score(value):
	$ScoreLabel.text = str(Global.score) + "/10"


func update_bananas(value):
	$BananasLabel.text = "x" + str(Global.bananas)


func show_message(text):
	$GUI/Message.text = text
	$MessageTimer.start()


func show_game_over():
	$PlayTimer.stop()
	emit_signal("game_ended")
	
	# Make a one-shot timer and wait for it to finish.
	yield(get_tree().create_timer(1), "timeout")
	$GUI/Background/AnimationPlayer.play_backwards("pixelate")
	yield(get_tree().create_timer(0.8), "timeout")
	
	$GUI/Message.show()
	show_message("Thank you!")
	yield($MessageTimer, "timeout")
	
	$GUI/StartButton.show()
	$GUI/Message.text = "Monkeying\nAround"


func _on_PlayTimer_timeout():
	seconds += 1
	$TimerLabel.text = str(seconds)


func _on_StartButton_pressed():
	#$GUI.hide()
	seconds = 0
	$TimerLabel.text = "0"
	$GUI/Message.hide()
	$GUI/StartButton.hide()
	emit_signal("start_game")
	$GUI/Background/AnimationPlayer.play("pixelate")
	$PlayTimer.start()
