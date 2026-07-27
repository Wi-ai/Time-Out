class_name DateTime extends Resource



@export_range(0, 59) var seconds: int = 0
@export_range(0, 59) var minutes: int = 0

var delta_time: float = 0

func decrease_by_sec(delta_seconds: float) -> void:
	delta_time += delta_seconds
	if delta_time < 1: 
		return
	
	var delta_int_secs: int = int(delta_time)
	delta_time -= delta_int_secs
	
# Convert current state to total seconds, subtract, and clamp to 0
	var total_secs: int = max(0, (minutes * 60 + seconds) - delta_int_secs)
	
	seconds = total_secs % 60
	minutes = total_secs / 60
	

	print_debug(str(minutes) + ":" + str(seconds))
