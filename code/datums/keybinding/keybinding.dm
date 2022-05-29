/datum/keybinding
<<<<<<< HEAD
    var/key
    var/name
    var/full_name
    var/description = ""
    var/category = CATEGORY_MISC
    var/weight = WEIGHT_LOWEST
=======
	var/key
	var/name
	var/full_name
	var/description = ""
	var/category = CATEGORY_MISC
	var/weight = WEIGHT_LOWEST
	var/keybind_signal
	/// Does this keybind apply regardless of any modifier keys (SHIFT-, ALT-, CTRL-)?
	/// Important for movement keys, which need to still activate despite other "hold to toggle" bindings on the modifier keys.
	var/any_modifier = FALSE

//I don't know why this is done in New() and not down() when it says down(), but that's how it's currently on tg
/datum/keybinding/New()
	if(!keybind_signal)
		CRASH("Keybind [src] called unredefined down() without a keybind_signal.")
>>>>>>> 4f3af9686c... Refactor handling of movement with modifier keys (#6886)

/datum/keybinding/proc/down(client/user)
    return FALSE
    
/datum/keybinding/proc/up(client/user)
    return FALSE
