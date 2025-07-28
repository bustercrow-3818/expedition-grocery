extends Node2D

@export var money: int

func update_money(mod: int) -> void:
	money += mod
