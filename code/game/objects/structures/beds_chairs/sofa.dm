/obj/structure/chair/fancy/sofa //like it's brother fancy chair, this is the father of all sofas
	name = "old father sofa"
	desc = "Now extinct, this kind of sofa shouldn't even exist anymore. If you see this wild specimen, contact your station's Anti-Couch Surfing Department."
	icon_state = "sofa_middle"
	icon = 'icons/obj/beds_chairs/sofa.dmi'
	buildstackamount = 1
	item_chair = null

<<<<<<< HEAD
/obj/structure/chair/sofa/Initialize()
	armrest = mutable_appearance(icon, "[icon_state]_armrest", ABOVE_MOB_LAYER)
	return ..()
/obj/structure/chair/sofa/post_buckle_mob(mob/living/M)
	. = ..()
	update_armrest()
=======
/obj/structure/chair/fancy/sofa/old
	color = rgb(141,70,0)
	name = "old sofa"
	desc = "An old design, but it still does the job of being a sofa."
	icon_state = "sofa_middle"
	colorable = TRUE
>>>>>>> 9a035f9365... [MDB IGNORE] The chair desouling and restructuring update (alongside some other changes) (#7547)

/obj/structure/chair/fancy/sofa/old/left
	icon_state = "sofa_end_left"

/obj/structure/chair/fancy/sofa/old/right
	icon_state = "sofa_end_right"

/obj/structure/chair/fancy/sofa/old/corner
	name = "impossible old sofa corner"
	desc = "This kind of sofa shouldn't even exist at all. If you see this non-euclidean specimen, contact your station's Anti-Couch Surfing Department."
	icon_state = "sofa_cursed"

/obj/structure/chair/fancy/sofa/old/corner/handle_layer() //only the armrest/back of this chair should cover the mob.
	return

/obj/structure/chair/fancy/sofa/old/corner/concave
	icon_state = "sofa_corner_in"
	name = "old sofa"
	desc = "An old design, but it still does the job of being a sofa, this one is concave."

<<<<<<< HEAD
/obj/structure/chair/sofa/corner
	icon_state = "sofacorner"
	
=======
/obj/structure/chair/fancy/sofa/old/corner/convex
	icon_state = "sofa_corner_out"
	name = "old sofa"
	desc = "An old design, but it still does the job of being a sofa, this one is convex."

>>>>>>> 9a035f9365... [MDB IGNORE] The chair desouling and restructuring update (alongside some other changes) (#7547)
// Original icon ported from Eris(?) and updated to work here.
/obj/structure/chair/fancy/sofa/corp
	name = "corporate sofa"
	desc = "Soft and cushy, yet professional."
	icon_state = "corp_sofa_middle"

/obj/structure/chair/fancy/sofa/corp/left
	icon_state = "corp_sofa_end_left"

/obj/structure/chair/fancy/sofa/corp/right
	icon_state = "corp_sofa_end_right"

<<<<<<< HEAD
/obj/structure/chair/sofa/corp/corner
	icon_state = "corp_sofacorner"
=======
/obj/structure/chair/fancy/sofa/corp/corner
	name = "impossible corporate sofa corner"
	desc = "This kind of sofa shouldn't even exist at all. If you see this non-euclidean specimen, contact your station's Anti-Couch Surfing Department."
	icon_state = "corp_sofa_cursed"

/obj/structure/chair/fancy/sofa/corp/corner/handle_layer()
	return

/obj/structure/chair/fancy/sofa/corp/corner/concave
	icon_state = "corp_sofa_corner_in"
	name = "corporate sofa"
	desc = "Soft and cushy, yet professional, this one is concave."

/obj/structure/chair/fancy/sofa/corp/corner/convex
	icon_state = "corp_sofa_corner_out"
	name = "corporate sofa"
	desc = "Soft and cushy, yet professional, this one is convex."
>>>>>>> 9a035f9365... [MDB IGNORE] The chair desouling and restructuring update (alongside some other changes) (#7547)
