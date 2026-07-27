extends Node

signal all_clocks_collected

const Total_clocks = 2

var Clocks = 0



@onready var collected: Label = $Collected


func add_point() -> void:
	Clocks += 1
	collected.text = str(Clocks)
	if Clocks >= Total_clocks:
		win_game()

func win_game() -> void:
	print("all Clocks collected!")
	all_clocks_collected
	get_tree().change_scene_to_file("res://Scenes/win.tscn")
