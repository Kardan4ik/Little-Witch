extends CharacterBody2D

@export var speed = 100.0
var player = null

func _ready():
	# Ищем игрока в группе "player"
	player = get_tree().get_first_node_in_group("player")

func _physics_process(_delta):
	if player:
		# Поворачиваемся к игроку
		look_at(player.position)
		# Двигаемся вперёд
		velocity = transform.x * speed
		move_and_slide()
