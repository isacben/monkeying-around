extends KinematicBody2D


export var GRAVITY : float = 20
export var SPEED : float = 200


var velocity = Vector2.ZERO


#func _ready():
	#


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
			velocity.x = SPEED
	else:
		velocity.x = 0
	
	velocity.y += GRAVITY
	
	var snap_vector = Vector2(0, 32)
	velocity = move_and_slide_with_snap(
		velocity, 
		snap_vector, 
		Vector2.UP)

	#move_and_collide(velocity * delta, true)
	
	if is_on_floor():
		velocity.y = 0
