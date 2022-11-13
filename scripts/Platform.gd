tool
extends Node2D


export var duration : float = 1
export var automatic : bool = true
export var move_from : Vector2 = Vector2.ZERO
export var move_to : Vector2 = Vector2.ZERO

onready var line : Node2D = $Debug_Line
onready var base : KinematicBody2D = $Platform_Base
onready var switch : Node2D = $Platform_Base/Switch
onready var tween : Tween = $Tween
onready var lever : Sprite = $Platform_Base/Switch/Sprite

var direction_forward : bool = true
var stopped : bool = true


func _ready():
	if ! Engine.is_editor_hint():
		if automatic:
			switch.queue_free()
			direction_forward = false
			set_tween(move_from, move_to)
		else:
			if (move_to.x > 0):
				lever.flip_h = true


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


func move_tweent():
	stopped = false
	
	if direction_forward:
		set_tween(move_from, move_to)
	else:
		set_tween(move_to, move_from)
		
	


func _on_Tween_tween_completed(object, key):
	if automatic:
		move_tweent()
	
	direction_forward = ! direction_forward
	stopped = true


func _on_SwitchArea_body_entered(body):
	if stopped:
		print("switch hit...")
		lever.flip_h = ! lever.flip_h
		move_tweent()
