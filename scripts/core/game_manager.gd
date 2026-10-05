extends Node
## Global lifecycle state. Gameplay systems are added in later phases.

var is_running: bool = false

func _ready() -> void:
	is_running = true
	EventBus.game_started.emit()
