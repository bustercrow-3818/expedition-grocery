extends Node2D

@export var player_det: Area2D
@export var mouse_det: Area2D

@onready var object_mod: Node2D = self.get_parent()
@onready var areas: CollisionShape2D

var hover: bool = false
var player_near: bool = false

func _ready() -> void:
	player_det.connect("body_entered", detect_player_near)
	player_det.connect("body_exited", detect_player_far)
	mouse_det.connect("mouse_entered", glow)
	mouse_det.connect("mouse_exited", glow)
	pass

func glow() -> void:
	if hover == true:
		hover = false
		object_mod.modulate = Color(1, 1, 1, 1)
	elif player_near == true:
		hover = true
		object_mod.modulate = Color(0, 1, 0, 1)

func detect_player_near(body: Node2D) -> void:
	if body is Player:
		player_near = true
	else:
		return
		
func detect_player_far(body: Node2D) -> void:
	if body is Player:
		player_near = false
	else:
		return
	
