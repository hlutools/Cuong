extends Node
## Minimal scene transition entry point.

func change_scene(scene_path: String) -> void:
	if scene_path.is_empty():
		push_warning("SceneManager.change_scene called with an empty path.")
		return

	var error := get_tree().change_scene_to_file(scene_path)
	if error != OK:
		push_error("Failed to change scene: %s (error %s)" % [scene_path, error])
		return

	EventBus.scene_changed.emit(scene_path)
