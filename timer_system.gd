class_name TimeSystem extends Node

signal updated

@export var date_time: DateTime
@export var ticks_pr_second: int = 6

func _process(delta: float) -> void:
	date_time.decrease_by_sec(delta * ticks_pr_second)
	updated.emit(date_time)
