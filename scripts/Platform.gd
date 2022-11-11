tool
extends Node2D


export var duration : float = 1
export var move_from : Vector2 = Vector2.ZERO
export var move_to : Vector2 = Vector2.ZERO

onready var line : Node2D = $Debug_Line
onready var base : KinematicBody2D = $Platform_Base
onready var tween : Tween = $Tween

var direction_forward : bool = false


func _ready():
	if ! Engine.is_editor_hint():
		set_tween(move_from, move_to)


func _process(_delta):
	if Engine.is_editor_hint():
		update()


func _draw():
	if Engine.is_editor_hint():
		if line:
			draw_line(
				line.position + move_from,
				line.position + move_to,
				Color.lime,
				2)
			draw_rect(
				Rect2(
					line.position - Vector2(30 + 3, 0),
					Vector2(160 + 6, 40)
				),
				Color.lime,
				false,
				2
			)


func set_tween(from, to):
	tween.interpolate_property(
		base,
		"position",
		from,
		to,
		duration,
		Tween.TRANS_LINEAR,
		Tween.EASE_IN_OUT)
	tween.start()


func _on_Tween_tween_completed(object, key):
	if direction_forward:
		set_tween(move_from, move_to)
	else:
		set_tween(move_to, move_from)
	
	direction_forward = ! direction_forward
