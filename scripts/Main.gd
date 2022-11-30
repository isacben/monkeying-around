extends Node2D


func _ready():
	Global.connect("bananas_changed", self, "banana_picked")
	Global.connect("score_changed", self, "lunch_box_picked")


func new_game():
	$Spawner.destroy()
	$Spawner.respawn()
	$Player.position = Vector2(-415, 1290)
	$Player.DISABLED = false
	$Song.play()


func _on_Player_fell():
	$FallSound.play()
	$Player.position = Global.last_position


func _on_game_ended():
	$Player.DISABLED = true
	$Song.stop()


func banana_picked(value):
	$BananaSound.play()


func lunch_box_picked(value):
	if Global.score > 0:
		$LunchBoxSound.play()
