extends KinematicBody2D

signal fell

export var GRAVITY : float = 35
export var ACC : float = 20
export var MAX_SPEED : float = 250
export var DISABLED = true

var velocity = Vector2.ZERO


func _ready():
	$AnimatedSprite.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if !DISABLED:
		if Input.is_action_pressed("ui_left"):
			velocity.x = max(velocity.x - ACC, -MAX_SPEED)
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.animation = "running"
		elif Input.is_action_pressed("ui_right"):
			velocity.x = min(velocity.x + ACC, MAX_SPEED)
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.animation = "running"
		else:
			velocity.x = lerp(velocity.x, 0, 0.15)
			$AnimatedSprite.animation = "idle"
		
		velocity.y = max(velocity.y + 25, GRAVITY)
		velocity = move_and_slide(velocity, Vector2.UP)
	
		if velocity.y > 1500:
			emit_signal("fell")
		
		if is_on_floor():
			velocity.y = 0
	else:
		velocity.x = 0
		$AnimatedSprite.animation = "idle"
