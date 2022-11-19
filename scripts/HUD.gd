extends CanvasLayer


var seconds : int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.connect("score_changed", self, "update_score")
	Global.connect("bananas_changed", self, "update_bananas")
	var boss = get_tree().get_root().find_node("Boss", true, false)
	boss.connect("game_over", self, "show_intro")


func update_score(value):
	$ScoreLabel.text = str(Global.score) + "/10"


func update_bananas(value):
	$BananasLabel.text = "x" + str(Global.bananas)


func show_intro():
	$Timer.stop()
	print("finished")

func _on_Timer_timeout():
	seconds += 1
	$TimerLabel.text = str(seconds)
