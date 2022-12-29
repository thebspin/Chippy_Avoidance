extends Node

const MAIN_MENU := preload("res://Scenes/UI/MainMenu.tscn")
const AVOIDANCE := preload("res://Scenes/Avoidance.tscn")
const MAIN_MENU_MUSIC := preload("res://Audio/Music/Mittsies - Horizon.ogg")
const AVOIDANCE_MUSIC := preload("res://Audio/Music/aran_EPHMR.ogg")

enum TIMELINE_EVENTS {
	DEATH, DAMAGE, ITEM_1,
	ITEM_2, ITEM_3, ITEM_4
}

var debug_mode := true
var god_mode := true
var can_pause := false

var run_stats := {
	"survival_time": 0.0,
	"unit_survival_time": 0.0,
	"damage_taken": 0.0,
	"items_used": 0.0,
	"jumps": 0.0,
	"steps": 0.0,
}


func reset_run_stats() -> void:
	for stat in run_stats.keys():
		run_stats[stat] = 0.0
