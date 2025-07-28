extends Node2D
class_name Shelf

@export var shelf_type: String

var poss_contents: Dictionary = {"Fruit": 3, "Veggies": 2}
var contents: Dictionary

func _ready() -> void:
	set_contents()
	for i in contents:
		print(contents.i.key())
		print(contents.i)
	pass

func set_contents() -> void:
	var check: int
	for i in poss_contents:
		check = randi_range(0, 1)
		if check > 0:
			contents[i] = i
	pass
