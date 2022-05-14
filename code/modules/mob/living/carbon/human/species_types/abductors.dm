/datum/species/abductor
<<<<<<< HEAD
	name = "Abductor"
	id = "abductor"
	say_mod = "gibbers"
=======
	name = "\improper Abductor"
	id = SPECIES_ABDUCTOR
>>>>>>> d23719e5c8... Makes tongues control the say mods instead of species (#6658)
	sexes = FALSE
	species_traits = list(NOBLOOD,NOEYESPRITES,NOMOUTH)
	inherent_traits = list(TRAIT_VIRUSIMMUNE,TRAIT_NOGUNS,TRAIT_NOHUNGER,TRAIT_NOBREATH)
	mutanttongue = /obj/item/organ/tongue/abductor
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT

/datum/species/abductor/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	var/datum/atom_hud/abductor_hud = GLOB.huds[DATA_HUD_ABDUCTOR]
	abductor_hud.add_hud_to(C)

/datum/species/abductor/on_species_loss(mob/living/carbon/C)
	. = ..()
	var/datum/atom_hud/abductor_hud = GLOB.huds[DATA_HUD_ABDUCTOR]
	abductor_hud.remove_hud_from(C)
