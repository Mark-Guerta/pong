extends CharacterBody2D

var ball : CharacterBody2D
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	ball = get_parent().get_node("Ball")

func _physics_process(delta: float) -> void:
	var variance = rng.randi_range(-10,10)
	global_position.y = ball.global_position.y - variance
