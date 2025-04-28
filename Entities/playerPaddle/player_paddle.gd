extends CharacterBody2D

const speed = 800.0

func getYdir() -> float:
	return Input.get_action_strength("Down P1") - Input.get_action_strength("Up P1")
	
func _physics_process(delta: float) -> void:
	var dir :Vector2=Vector2(0, getYdir())
	velocity = dir * speed
	move_and_slide()
