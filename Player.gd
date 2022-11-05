extends KinematicBody2D


export var GRAVITY = 100
export var SPEED = 230


var velocity = Vector2.ZERO


#func _ready():
	#


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x = 0
	velocity.y = GRAVITY
	
	if Input.is_action_pressed("ui_left"):
		# $Diver.animation = "swim"
		velocity.x = -SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		
	if !is_on_floor():
		velocity.x = 0
	
	
	velocity = move_and_slide(velocity, Vector2.UP)
