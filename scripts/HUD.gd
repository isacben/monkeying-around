extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.connect("score_changed", self, "update_score")
	Global.connect("bananas_changed", self, "update_bananas")


func update_score(value):
	$ScoreLabel.text = "x" + str(Global.score)


func update_bananas(value):
	$BananasLabel.text = "x" + str(Global.bananas)
