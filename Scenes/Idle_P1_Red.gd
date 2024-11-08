extends Area2D

var sensor = 0
var animp

func _ready() -> void:
	animp = $AnimationPlayer

func _process(delta: float) -> void:
	if sensor == 1:
		if Input.is_action_just_pressed("ui_left"):
			animp.play("Good")
	if sensor == 0:
		if Input.is_action_just_pressed("ui_left"):
			animp.play("Bad")

func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 1

func _on_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sensor = 0
