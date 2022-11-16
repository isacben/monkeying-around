extends Node2D


var score = 0 setget set_score
var bananas = 0 setget set_bananas
var last_position = Vector2(90, 390)

signal score_changed
signal bananas_changed


func set_score(value):
	score = value
	emit_signal("score_changed", score)

func set_bananas(value):
	bananas = value
	emit_signal("bananas_changed", bananas)
