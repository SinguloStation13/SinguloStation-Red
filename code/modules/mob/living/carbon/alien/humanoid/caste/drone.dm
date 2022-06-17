/mob/living/carbon/alien/humanoid/drone
	name = "alien drone"
	caste = "d"
	maxHealth = 125
	health = 125
	icon_state = "aliend"

/mob/living/carbon/alien/humanoid/drone/Initialize()
	AddAbility(new/obj/effect/proc_holder/alien/evolve(null))
	. = ..()

/mob/living/carbon/alien/humanoid/drone/create_internal_organs()
	internal_organs += new /obj/item/organ/alien/plasmavessel/large
	internal_organs += new /obj/item/organ/alien/resinspinner
	internal_organs += new /obj/item/organ/alien/acid
	return ..()

/obj/effect/proc_holder/alien/evolve
	name = "Evolve to Praetorian"
	desc = "Praetorian"
	plasma_cost = 500
	action_icon_state = "alien_evolve_drone"

/obj/effect/proc_holder/alien/evolve/fire(mob/living/carbon/alien/humanoid/user)
	var/obj/item/organ/alien/hivenode/node = user.getorgan(/obj/item/organ/alien/hivenode)
	if(!node) //Players are Murphy's Law. We may not expect there to ever be a living xeno with no hivenode, but they _WILL_ make it happen.
		to_chat(user, "<span class='danger'>Without the hivemind, you can't possibly hold the responsibility of leadership!</span>")
		return FALSE
	if(node.recent_queen_death)
		to_chat(user, "<span class='danger'>Your thoughts are still too scattered to take up the position of leadership.</span>")
		return FALSE

	if(!isturf(user.loc))
		to_chat(user, "<span class='notice'>You can't evolve here!</span>")
		return FALSE
	if(!get_alien_type_in_hive(/mob/living/carbon/alien/humanoid/royal))
		var/mob/living/carbon/alien/humanoid/royal/praetorian/new_xeno = new(user.loc)
		user.alien_evolve(new_xeno)
		return TRUE
	else
		to_chat(user, "<span class='notice'>We already have a living royal!</span>")
<<<<<<< HEAD
		return 0
=======
		return FALSE
>>>>>>> 8ed8368dcf... Small-ish xenomorph refactor, hunter and sentinel rebalance (#6960)
