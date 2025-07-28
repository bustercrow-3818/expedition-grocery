extends CharacterBody2D
class_name Player

@export var walk_speed: float
@export var run_speed: float
@export var sprite: AnimatedSprite2D

func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	#region movement
	if Input.is_action_pressed("run"):
		movement(run_speed, "run", delta)
	else:
		movement(walk_speed, "walk", delta)
	
	move_and_slide()
	#endregion
	
	pass

func movement(speed: float, state: String, delta: float) -> void:
	if Input.is_action_pressed("down"):
		velocity = speed * Vector2(0, 1) * delta
		sprite.play(state + "_down")
	elif Input.is_action_pressed("right"):
		velocity = speed * Vector2(1, 0) * delta
		sprite.play(state + "_right")
	elif Input.is_action_pressed("up"):
		velocity = speed * Vector2(0, -1) * delta
		sprite.play(state + "_up")
	elif Input.is_action_pressed("left"):
		velocity = speed * Vector2(-1, 0) * delta
		sprite.play(state + "_left")
	else:
		velocity = Vector2.ZERO
		sprite.play("idle")
