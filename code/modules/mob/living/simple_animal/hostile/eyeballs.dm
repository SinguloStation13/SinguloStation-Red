

/mob/living/simple_animal/hostile/carp/eyeball
	name = "eyeball"
	desc = "An odd looking creature, it won't stop staring..."
	icon_state = "eyeball"
	icon_living = "eyeball"
	icon_gib = ""
	gender = NEUTER
	mob_biotypes = list(MOB_ORGANIC)
	response_help = "pets"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	emote_taunt = list("glares")
	taunt_chance = 25
	maxHealth = 45
	health = 45
	speak_emote = list("telepathically cries")

	obj_damage = 60
	melee_damage = 20
	attacktext = "blinks at"
	attack_sound = 'sound/weapons/pierce.ogg'
	movement_type = FLYING

	faction = list("spooky")
<<<<<<< HEAD
	del_on_death = TRUE
=======
	del_on_death = TRUE
	random_color = FALSE
>>>>>>> cc01052c71... le fishe update (carp gags and Cayenne can carry nuke disk) (#6580)
