/**********************Mining drone**********************/
#define MINEDRONE_COLLECT 1
#define MINEDRONE_ATTACK 2

/mob/living/simple_animal/hostile/mining_drone
	name = "\improper Nanotrasen minebot"
	desc = "The instructions printed on the side read: This is a small robot used to support miners, can be set to search and collect loose ore, or to help fend off wildlife."
	gender = NEUTER
	icon = 'icons/mob/aibots.dmi'
	icon_state = "mining_drone"
	icon_living = "mining_drone"
	status_flags = CANSTUN|CANKNOCKDOWN|CANPUSH
	mouse_opacity = MOUSE_OPACITY_ICON
	faction = list("neutral")
	a_intent = INTENT_HARM
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	move_to_delay = 10
	health = 125
	maxHealth = 125
	melee_damage = 15
	obj_damage = 10
	environment_smash = ENVIRONMENT_SMASH_NONE
	check_friendly_fire = TRUE
<<<<<<< HEAD
=======
	move_to_delay = 5
	ranged = TRUE
	sentience_type = SENTIENCE_MINEBOT
>>>>>>> 3961496d2d... A couple minebot tweaks (#7467)
	stop_automated_movement_when_pulled = TRUE
	attacktext = "drills"
	attack_sound = 'sound/weapons/circsawhit.ogg'
	sentience_type = SENTIENCE_MINEBOT
	speak_emote = list("states")
	wanted_objects = list(/obj/item/stack/ore/diamond, /obj/item/stack/ore/gold, /obj/item/stack/ore/silver,
						  /obj/item/stack/ore/plasma, /obj/item/stack/ore/uranium, /obj/item/stack/ore/iron,
						  /obj/item/stack/ore/bananium, /obj/item/stack/ore/titanium)
	healable = 0
	loot = list(/obj/effect/decal/cleanable/robot_debris)
	del_on_death = TRUE
	var/mode = MINEDRONE_COLLECT
	var/light_on = 0
	var/obj/item/gun/energy/kinetic_accelerator/minebot/stored_gun

/mob/living/simple_animal/hostile/mining_drone/Initialize()
	. = ..()
	stored_gun = new(src)
	var/datum/action/innate/minedrone/toggle_light/toggle_light_action = new()
	toggle_light_action.Grant(src)
	var/datum/action/innate/minedrone/toggle_meson_vision/toggle_meson_vision_action = new()
	toggle_meson_vision_action.Grant(src)
	var/datum/action/innate/minedrone/toggle_mode/toggle_mode_action = new()
	toggle_mode_action.Grant(src)
	var/datum/action/innate/minedrone/dump_ore/dump_ore_action = new()
	dump_ore_action.Grant(src)
	var/obj/item/implant/radio/mining/imp = new(src)
	imp.implant(src, force = TRUE)

	access_card = new /obj/item/card/id(src)
	var/datum/job/mining/M = new
	access_card.access = M.get_access()

	SetCollectBehavior()

/mob/living/simple_animal/hostile/mining_drone/Destroy()
	for (var/datum/action/innate/minedrone/action in actions)
		qdel(action)
<<<<<<< HEAD
	return ..()

/mob/living/simple_animal/hostile/mining_drone/sentience_act()
	..()
	check_friendly_fire = 0
=======

	// Clear any equipment they might have
	QDEL_LAZYLIST(installed_upgrades)
	QDEL_NULL(stored_pka)
	QDEL_NULL(stored_cutter)
	QDEL_NULL(stored_drill)
	QDEL_NULL(stored_scanner)
	return ..()

/mob/living/simple_animal/hostile/mining_drone/update_health_hud()
	if(!client || !hud_used)
		return
	if(hud_used.healths)
		if(stat != DEAD)
			if(health >= maxHealth)
				hud_used.healths.icon_state = "health0"
			else if(health > maxHealth * 0.7)
				hud_used.healths.icon_state = "health2"
			else if(health > maxHealth * 0.4)
				hud_used.healths.icon_state = "health3"
			else if(health > maxHealth * 0.2)
				hud_used.healths.icon_state = "health4"
			else
				hud_used.healths.icon_state = "health5"
		else
			hud_used.healths.icon_state = "health7"
>>>>>>> 3961496d2d... A couple minebot tweaks (#7467)

/mob/living/simple_animal/hostile/mining_drone/examine(mob/user)
	. = ..()
	var/t_He = p_they(TRUE)
	var/t_him = p_them()
	var/t_s = p_s()
	if(health < maxHealth)
<<<<<<< HEAD
		if(health >= maxHealth * 0.5)
			. += "<span class='warning'>[t_He] look[t_s] slightly dented.</span>"
=======
		if(health >= maxHealth * 0.75)
			. += "<span class='warning'>It looks slightly dented.</span>"
		else if(health >= maxHealth * 0.25)
			. += "<span class='warning'>It looks <b>moderately</b> dented.</span>"
		else if(health > 0)
			. += "<span class='boldwarning'>It looks severely dented!</span>"
>>>>>>> 3961496d2d... A couple minebot tweaks (#7467)
		else
			. += "<span class='boldwarning'>[t_He] look[t_s] severely dented!</span>"
	. += {"<span class='notice'>Using a mining scanner on [t_him] will instruct [t_him] to drop stored ore. <b>[max(0, LAZYLEN(contents) - 1)] Stored Ore</b>\n
	Field repairs can be done with a welder."}
	if(stored_gun && stored_gun.max_mod_capacity)
		. += "<b>[stored_gun.get_remaining_mod_capacity()]%</b> mod capacity remaining."
		for(var/A in stored_gun.get_modkits())
			var/obj/item/borg/upgrade/modkit/M = A
			. += "<span class='notice'>There is \a [M] installed, using <b>[M.cost]%</b> capacity.</span>"

/mob/living/simple_animal/hostile/mining_drone/welder_act(mob/living/user, obj/item/I)
	. = TRUE
	if(mode == MINEDRONE_ATTACK)
		to_chat(user, "<span class='info'>[src] can't be repaired while in attack mode!</span>")
		return

	if(maxHealth == health)
		to_chat(user, "<span class='info'>[src] is at full integrity.</span>")
		return

	if(I.use_tool(src, user, 0, volume=40))
		adjustBruteLoss(-15)
		to_chat(user, "<span class='info'>You repair some of the armor on [src].</span>")

/mob/living/simple_animal/hostile/mining_drone/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/mining_scanner) || istype(I, /obj/item/t_scanner/adv_mining_scanner))
		to_chat(user, "<span class='info'>You instruct [src] to drop any collected ore.</span>")
		DropOre()
		return
	if(I.tool_behaviour == TOOL_CROWBAR || istype(I, /obj/item/borg/upgrade/modkit))
		I.melee_attack_chain(user, stored_gun, params)
		return
	..()

/mob/living/simple_animal/hostile/mining_drone/death()
	DropOre(0)
	if(stored_gun)
		for(var/obj/item/borg/upgrade/modkit/M in stored_gun.modkits)
			M.uninstall(stored_gun)
	deathmessage = "blows apart!"
	..()

/mob/living/simple_animal/hostile/mining_drone/attack_hand(mob/living/carbon/human/M)
	. = ..()
	if(.)
		return
	if(M.a_intent == INTENT_HELP)
		toggle_mode()
		switch(mode)
			if(MINEDRONE_COLLECT)
				to_chat(M, "<span class='info'>[src] has been set to search and store loose ore.</span>")
			if(MINEDRONE_ATTACK)
				to_chat(M, "<span class='info'>[src] has been set to attack hostile wildlife.</span>")
		return

/mob/living/simple_animal/hostile/mining_drone/CanPass(atom/movable/O)
	if(istype(O, /obj/item/projectile/kinetic))
		var/obj/item/projectile/kinetic/K = O
		if(K.kinetic_gun)
			for(var/A in K.kinetic_gun.get_modkits())
				var/obj/item/borg/upgrade/modkit/M = A
				if(istype(M, /obj/item/borg/upgrade/modkit/minebot_passthrough))
					return TRUE
	if(istype(O, /obj/item/projectile/destabilizer))
		return TRUE
	return ..()

<<<<<<< HEAD
/mob/living/simple_animal/hostile/mining_drone/proc/SetCollectBehavior()
	mode = MINEDRONE_COLLECT
=======
/**********************Minebot Attack Handling**********************/

/// Melee attack handling
/mob/living/simple_animal/hostile/mining_drone/AttackingTarget()
	if(client && istype(target, /obj/machinery/computer))
		target.ui_interact(src)
		return
	if(stored_cutter && (istype(target, /obj/item/stack/ore/plasma) || istype(target, /obj/item/stack/sheet/mineral/plasma)) && mode == MODE_MINING) //Charging the on-board plasma cutter
		stored_cutter.attackby(target, src)
		if(stored_cutter.cell.charge == stored_cutter.cell.maxcharge) // Either charge the cutter or pick up the plasma if the cutter's full
			collect_ore()
		return
	if(istype(target, /obj/item/stack/ore)) // Collecting ore
		collect_ore()
		return
	if(!client && isliving(target)) // Switching to offense mode if we've got a target
		set_offense_behavior()
	if(stored_drill)
		stored_drill.melee_attack_chain(src, target) // Use the drill if the target's adjacent

/// Ranged attack handling (PKA/plasma cutter)
/mob/living/simple_animal/hostile/mining_drone/OpenFire(atom/target)
	if(CheckFriendlyFire(target))
		return
	if(!client && istype(target, /obj/item/stack/ore)) // Prevents the AI from shooting ore
		return
	// Either attack with the PKA or the cutter. The cutter takes priority in mining mode, but if we're out of ammo or don't have one, we use the PKA.
	if(mode == MODE_COMBAT || !stored_cutter || !stored_cutter.can_shoot())
		stored_pka.afterattack(target, src)
	else
		stored_cutter.afterattack(target, src)

/// Handles reacting to attacks, getting the minebot in combat mode if it was mining.
/mob/living/simple_animal/hostile/mining_drone/adjustHealth(amount, updating_health = TRUE, forced = FALSE)
	if(!client && mode != MODE_COMBAT && amount > 0) // We don't want to automatically switch it if a player's in control
		set_offense_behavior()
	update_health_hud()
	. = ..()

/**********************Minebot AI Handling**********************/

/// Allows the minebot to find ore through rocks, limited by the installed scanner's maximum range.
/mob/living/simple_animal/hostile/mining_drone/ListTargets()
	var/search_objects = orange(stored_scanner.range, GET_TARGETS_FROM(src))
	if(mode == MODE_MINING)
		. = list()
		for(var/object in search_objects)
			if(istype(object, /obj/item/stack/ore))
				LAZYADD(., object)
			if(mining_enabled && istype(object, /turf/closed/mineral))
				LAZYADD(., object)
		return
	. = ..()

/// Effectively the same as standard target listing
/mob/living/simple_animal/hostile/mining_drone/ListTargetsLazy(var/_Z)
	if(mode == MODE_MINING)
		return ListTargets()
	. = ..()

// We always attack the nearest target if we're in mining mode, so we don't go wandering off or leave ore on the ground.
/mob/living/simple_animal/hostile/mining_drone/PickTarget(list/Targets)
	if(mode == MODE_MINING)
		var/atom/target_from = GET_TARGETS_FROM(src)
		var/closest_target
		var/closest_distance
		for(var/target in Targets)
			var/distance = get_dist(target_from, target)
			if(!closest_target)
				closest_distance = distance
				closest_target = target
			else
				if(closest_distance > distance)
					closest_distance = distance
					closest_target = target
		return closest_target
	// No special targeting if we're in combat mode
	. = ..()

/// Handles mining, otherwise acts the same as simple_animal/hostile.
/mob/living/simple_animal/hostile/mining_drone/CanAttack(atom/A)
	if(mining_enabled && istype(A, /turf/closed/mineral)) // Normally CanAttack() skips over turfs, but we'll sometimes want to attack mineral turfs
		var/turf/closed/mineral/T = A
		for(var/turf/closed/obstructing_turf in getline(src,A))
			if(!istype(obstructing_turf, /turf/closed/mineral)) // No trying to mine through non-rock turfs
				return ..()
		if(T.mineralType)
			return TRUE
	if(search_objects && (!isturf(A) && !istype(A.loc, /turf))) // No trying to mine ore inside inventories
		return
	. = ..()

/**********************Minebot Procs**********************/

/// Sets the minebot's simplemob AI to focus on collecting ore.
/mob/living/simple_animal/hostile/mining_drone/proc/set_collect_behavior()
	mode = MODE_MINING
>>>>>>> 3961496d2d... A couple minebot tweaks (#7467)
	vision_range = 9
	search_objects = 2
	wander = TRUE
	ranged = FALSE
	minimum_distance = 1
	retreat_distance = null
	icon_state = "mining_drone"
	to_chat(src, "<span class='info'>You are set to collect mode. You can now collect loose ore.</span>")

/mob/living/simple_animal/hostile/mining_drone/proc/SetOffenseBehavior()
	mode = MINEDRONE_ATTACK
	vision_range = 7
	search_objects = 0
	wander = FALSE
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 1
	icon_state = "mining_drone_offense"
	to_chat(src, "<span class='info'>You are set to attack mode. You can now attack from range.</span>")

/mob/living/simple_animal/hostile/mining_drone/AttackingTarget()
	if(istype(target, /obj/item/stack/ore) && mode == MINEDRONE_COLLECT)
		CollectOre()
		return
	if(isliving(target))
		SetOffenseBehavior()
	return ..()

/mob/living/simple_animal/hostile/mining_drone/OpenFire(atom/A)
	if(CheckFriendlyFire(A))
		return
	stored_gun.afterattack(A, src) //of the possible options to allow minebots to have KA mods, would you believe this is the best?

/mob/living/simple_animal/hostile/mining_drone/proc/CollectOre()
	for(var/obj/item/stack/ore/O in range(1, src))
		O.forceMove(src)

/mob/living/simple_animal/hostile/mining_drone/proc/DropOre(message = 1)
	if(!contents.len)
		if(message)
			to_chat(src, "<span class='notice'>You attempt to dump your stored ore, but you have none.</span>")
		return
	if(message)
		to_chat(src, "<span class='notice'>You dump your stored ore.</span>")
	for(var/obj/item/stack/ore/O in contents)
		O.forceMove(drop_location())

/mob/living/simple_animal/hostile/mining_drone/adjustHealth(amount, updating_health = TRUE, forced = FALSE)
	if(mode != MINEDRONE_ATTACK && amount > 0)
		SetOffenseBehavior()
	. = ..()

/datum/action/innate/minedrone/toggle_meson_vision
	name = "Toggle Meson Vision"
	button_icon_state = "meson"

/datum/action/innate/minedrone/toggle_meson_vision/Activate()
	var/mob/living/simple_animal/hostile/mining_drone/user = owner
	if(user.sight & SEE_TURFS)
		user.sight &= ~SEE_TURFS
		user.lighting_alpha = initial(user.lighting_alpha)
	else
		user.sight |= SEE_TURFS
		user.lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE

	user.sync_lighting_plane_alpha()

	to_chat(user, "<span class='notice'>You toggle your meson vision [(user.sight & SEE_TURFS) ? "on" : "off"].</span>")


/mob/living/simple_animal/hostile/mining_drone/proc/toggle_mode()
	switch(mode)
		if(MINEDRONE_ATTACK)
			SetCollectBehavior()
		else
			SetOffenseBehavior()

//Actions for sentient minebots

/datum/action/innate/minedrone
	check_flags = AB_CHECK_CONSCIOUS
	icon_icon = 'icons/mob/actions/actions_mecha.dmi'
	background_icon_state = "bg_default"

/datum/action/innate/minedrone/toggle_light
	name = "Toggle Light"
	button_icon_state = "mech_lights_off"

/datum/action/innate/minedrone/toggle_light/Activate()
	var/mob/living/simple_animal/hostile/mining_drone/user = owner

	if(user.light_on)
		user.set_light(0)
	else
		user.set_light(6)
	user.light_on = !user.light_on
	to_chat(user, "<span class='notice'>You toggle your light [user.light_on ? "on" : "off"].</span>")

/datum/action/innate/minedrone/toggle_mode
	name = "Toggle Mode"
	button_icon_state = "mech_cycle_equip_off"

/datum/action/innate/minedrone/toggle_mode/Activate()
	var/mob/living/simple_animal/hostile/mining_drone/user = owner
	user.toggle_mode()

/datum/action/innate/minedrone/dump_ore
	name = "Dump Ore"
	button_icon_state = "mech_eject"

/datum/action/innate/minedrone/dump_ore/Activate()
	var/mob/living/simple_animal/hostile/mining_drone/user = owner
	user.DropOre()


/**********************Minebot Upgrades**********************/

//Melee

/obj/item/mine_bot_upgrade
	name = "minebot melee upgrade"
	desc = "A minebot upgrade."
	icon_state = "door_electronics"
	icon = 'icons/obj/module.dmi'

<<<<<<< HEAD
/obj/item/mine_bot_upgrade/afterattack(mob/living/simple_animal/hostile/mining_drone/M, mob/user, proximity)
	. = ..()
	if(!istype(M) || !proximity)
=======
/// Handles adding upgrades. This checks for any duplicate mods and links the mod to the minebot. Returns FALSE if the upgrade fails, otherwise returns TRUE
/obj/item/minebot_upgrade/proc/upgrade_bot(mob/living/simple_animal/hostile/mining_drone/minebot, mob/user)
	if(is_type_in_list(src, minebot.installed_upgrades))
		minebot.balloon_alert(user, "A similar mod has already been installed.")
		return FALSE
	if(!user.transferItemToLoc(src, minebot))
		return FALSE
	linked_bot = minebot
	LAZYADD(linked_bot.installed_upgrades, src)
	to_chat(user, "<span class='notice'>You install [src].</span>")
	playsound(loc, 'sound/items/screwdriver.ogg', 100, 1)
	return TRUE

/// Handles removing upgrades. This handles unlinking the minebot as well, so it should be called after any upgrade-specific unequip actions.
/obj/item/minebot_upgrade/proc/unequip()
	LAZYREMOVE(linked_bot.installed_upgrades, src)
	forceMove(get_turf(linked_bot))
	linked_bot = null

/// For handling special minebot actions (currently just for the medical upgrade)
/obj/item/minebot_upgrade/proc/onAltClick(atom/A)
	return

/// Allows a minebot upgrade to put stat data into the minebot's stat panel. This should return a 2-entry list with the data to be inserted into the statpanel.
/obj/item/minebot_upgrade/proc/get_stat_data()
	return

// Health Bonus
// Gives a health bonus to the minebot.
/obj/item/minebot_upgrade/health
	name = "minebot armor upgrade"
	desc = "Improves a minebot's armor, allowing them to sustain more damage before being disabled."
	var/health_upgrade = 45

/obj/item/minebot_upgrade/health/upgrade_bot(mob/living/simple_animal/hostile/mining_drone/minebot, mob/user)
	if(!..())
>>>>>>> 3961496d2d... A couple minebot tweaks (#7467)
		return
	upgrade_bot(M, user)

/obj/item/mine_bot_upgrade/proc/upgrade_bot(mob/living/simple_animal/hostile/mining_drone/M, mob/user)
	if(M.melee_damage != initial(M.melee_damage))
		to_chat(user, "[src] already has a combat upgrade installed!")
		return
	M.melee_damage += 7
	qdel(src)

//Health

/obj/item/mine_bot_upgrade/health
	name = "minebot armor upgrade"

/obj/item/mine_bot_upgrade/health/upgrade_bot(mob/living/simple_animal/hostile/mining_drone/M, mob/user)
	if(M.maxHealth != initial(M.maxHealth))
		to_chat(user, "[src] already has reinforced armor!")
		return
	M.maxHealth += 45
	M.updatehealth()
	qdel(src)

//AI

/obj/item/slimepotion/slime/sentience/mining
	name = "minebot AI upgrade"
	desc = "Can be used to grant sentience to minebots. It's incompatible with minebot armor and melee upgrades, and will override them."
	icon_state = "door_electronics"
	icon = 'icons/obj/module.dmi'
	sentience_type = SENTIENCE_MINEBOT
	var/base_health_add = 5 //sentient minebots are penalized for beign sentient; they have their stats reset to normal plus these values
	var/base_damage_add = 1 //this thus disables other minebot upgrades
	var/base_speed_add = 1
	var/base_cooldown_add = 10 //base cooldown isn't reset to normal, it's just added on, since it's not practical to disable the cooldown module

/obj/item/slimepotion/slime/sentience/mining/after_success(mob/living/user, mob/living/simple_animal/SM)
	if(istype(SM, /mob/living/simple_animal/hostile/mining_drone))
		var/mob/living/simple_animal/hostile/mining_drone/M = SM
		M.maxHealth = initial(M.maxHealth) + base_health_add
		M.melee_damage = initial(M.melee_damage) + base_damage_add
		M.move_to_delay = initial(M.move_to_delay) + base_speed_add
		if(M.stored_gun)
			M.stored_gun.overheat_time += base_cooldown_add

#undef MINEDRONE_COLLECT
#undef MINEDRONE_ATTACK
