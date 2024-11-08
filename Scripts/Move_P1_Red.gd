extends Area2D

var speed = 1
var sensor = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += speed;
	
	if position.y > 640:
		queue_free()
		
	if sensor == 1:
		if Global.sensor_P1_RED == 1:
			if Input.is_action_just_pressed("ui_left"):
				queue_free()

func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 1
	Global.sensor_P1_RED = 1

func _on_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 0
	Global.sensor_P1_RED = 0
