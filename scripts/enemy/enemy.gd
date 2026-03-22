extends CharacterBody2D

@export var speed: float = 50.0

@onready var player = get_tree().get_first_node_in_group("player")

func _physics_process(_delta: float) -> void:
	if position > player.global_position:
		$Sprite2D.flip_h = true
	else:
		$Sprite2D.flip_h = false
	
	var direction = position.direction_to(player.global_position).normalized()
	velocity = direction * speed
	move_and_slide()
