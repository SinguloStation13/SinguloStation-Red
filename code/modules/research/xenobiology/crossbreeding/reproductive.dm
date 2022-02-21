/*
Reproductive extracts:
	When fed three monkey cubes, produces between
	1 and 4 normal slime extracts of the same colour.
*/
/obj/item/slimecross/reproductive
	name = "reproductive extract"
	desc = "It pulses with a strange hunger."
	icon_state = "reproductive"
	effect = "reproductive"
<<<<<<< HEAD
	effect_desc = "When fed monkey cubes it produces more extracts. Bio bag compatible as well."
	var/extract_type = /obj/item/slime_extract/
	var/cubes_eaten = 0
	var/last_produce = 0
	var/cooldown = 30 // 3 seconds.
=======
	effect_desc = "When fed monkey cubes it produces a baby slime. Bio bag compatible as well."
	layer = LOW_ITEM_LAYER
	var/last_produce = 0
	var/cooldown = 30 SECONDS
	var/feed_amount = 3
	var/datum/component/storage/concrete/extract_inventory/slime_storage
>>>>>>> 54ef56f54b... nerfs reproductive extracts (#5989)
	var/static/list/typecache_to_take

/obj/item/slimecross/reproductive/Initialize()
	. = ..()
	if(!typecache_to_take)
		typecache_to_take = typecacheof(/obj/item/reagent_containers/food/snacks/monkeycube)

/obj/item/slimecross/reproductive/attackby(obj/item/O, mob/user)
	if((last_produce + cooldown) > world.time)
		to_chat(user, "<span class='warning'>[src] is still digesting!</span>")
		return
	if(istype(O, /obj/item/storage/bag/bio))
		var/list/inserted = list()
		SEND_SIGNAL(O, COMSIG_TRY_STORAGE_TAKE_TYPE, typecache_to_take, src, 1, null, null, user, inserted)
		if(inserted.len)
			var/obj/item/reagent_containers/food/snacks/monkeycube/M = inserted[1]
			if(istype(M))
				eat_cube(M, user)
		else
			to_chat(user, "<span class='warning'>There are no monkey cubes in the bio bag!</span>")
	if(istype(O,/obj/item/reagent_containers/food/snacks/monkeycube))
		eat_cube(O, user)
	if(cubes_eaten >= 3)
		var/cores = rand(1,4)
		visible_message("<span class='notice'>[src] briefly swells to a massive size, and expels [cores] extract[cores > 1 ? "s":""]!</span>")
		playsound(src, 'sound/effects/splat.ogg', 40, 1)
		last_produce = world.time
		for(var/i = 0, i < cores, i++)
			new extract_type(get_turf(loc))
		cubes_eaten = 0

/obj/item/slimecross/reproductive/proc/eat_cube(obj/item/reagent_containers/food/snacks/monkeycube, mob/user)
		qdel(monkeycube)
		cubes_eaten++
		to_chat(user, "<span class='notice'>You feed [monkeycube] to [src], and it pulses gently.</span>")
		playsound(src, 'sound/items/eatfood.ogg', 20, 1)

/obj/item/slimecross/reproductive/grey
	colour = "grey"

/obj/item/slimecross/reproductive/orange
	colour = "orange"

/obj/item/slimecross/reproductive/purple
	colour = "purple"

/obj/item/slimecross/reproductive/blue
	colour = "blue"

/obj/item/slimecross/reproductive/metal
	colour = "metal"

/obj/item/slimecross/reproductive/yellow
	colour = "yellow"

/obj/item/slimecross/reproductive/darkpurple
	colour = "dark purple"

/obj/item/slimecross/reproductive/darkblue
	colour = "dark blue"

/obj/item/slimecross/reproductive/silver
	colour = "silver"

/obj/item/slimecross/reproductive/bluespace
	colour = "bluespace"

/obj/item/slimecross/reproductive/sepia
	colour = "sepia"

/obj/item/slimecross/reproductive/cerulean
	colour = "cerulean"

/obj/item/slimecross/reproductive/pyrite
	colour = "pyrite"

/obj/item/slimecross/reproductive/red
	colour = "red"

/obj/item/slimecross/reproductive/green
	colour = "green"

/obj/item/slimecross/reproductive/pink
	colour = "pink"

/obj/item/slimecross/reproductive/gold
	colour = "gold"

/obj/item/slimecross/reproductive/oil
	colour = "oil"

/obj/item/slimecross/reproductive/black
	colour = "black"

/obj/item/slimecross/reproductive/lightpink
	colour = "light pink"

/obj/item/slimecross/reproductive/adamantine
	colour = "adamantine"

/obj/item/slimecross/reproductive/rainbow
	colour = "rainbow"
