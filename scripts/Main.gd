extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func new_game():
	$Player.DISABLED = false


func _on_Player_fell():
	$Player.position = Global.last_position


func _on_game_ended():
	$Player.DISABLED = true
	
