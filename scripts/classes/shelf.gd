extends Node2D
class_name Shelf

@export var shelf_type: StoreStock.sections

var poss_contents: Dictionary = StoreStock.shelf_type.duplicate()
var contents: Dictionary

func _ready() -> void:
	pass

func set_contents() -> void:
	var check: int
	for i in poss_contents:
		check = randi_range(0, 1)
		if check > 0:
			contents[i] = i
	pass
