extends Node2D
class_name Shelf

@export var shelf_type: StoreStock.sections

var poss_contents: Dictionary = StoreStock.shelf_type.duplicate()
var contents: Array[String]

func _ready() -> void:
	poss_contents = StoreStock.shelf_type.keys()

func set_contents(variety: int, qty: int) -> void:
	
	pass
