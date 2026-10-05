extends Node
## Global event bus. Cross-system signals only.

signal game_started
signal scene_changed(scene_path: String)
signal game_paused
signal game_resumed
