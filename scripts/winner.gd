extends Area2D

@onready var game_manager: Node = %GameManager
@onready var label: Label = $"../player/Camera2D/Label"
@onready var timer: Timer = $Timer



func _on_body_entered(body):
	if game_manager.score >= 25: 
		game_manager.addscore(50)
		label.text = "Thank you, You can RIP right now. Good Luck!"
		Engine.time_scale = 0.5
		timer.start()
		
	else:
		label.text = "I need at least 25 coins! "



func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
