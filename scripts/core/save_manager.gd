extends Node
## Versioned save foundation. Gameplay persistence is added later.

const SAVE_VERSION: int = 1

func create_empty_save() -> Dictionary:
	return {
		"save_version": SAVE_VERSION,
		"player": {},
		"world": {},
		"progression": {}
	}
