/obj/item/clothing/shoes/sneakers

/obj/item/clothing/shoes/sneakers/black
	name = "black shoes"
<<<<<<< HEAD:code/modules/clothing/shoes/colour.dm
	icon_state = "black"
	item_color = "black"
=======
>>>>>>> 6fce5c00a6... Removes item_color (#6349):code/modules/clothing/shoes/color.dm
	desc = "A pair of black shoes."
	custom_price = 20

	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT

/obj/item/clothing/shoes/sneakers/brown
	name = "brown shoes"
	desc = "A pair of brown shoes."
<<<<<<< HEAD:code/modules/clothing/shoes/colour.dm
	icon_state = "brown"
	item_color = "brown"
=======
	greyscale_colors = "#814112#ffffff"
>>>>>>> 6fce5c00a6... Removes item_color (#6349):code/modules/clothing/shoes/color.dm

/obj/item/clothing/shoes/sneakers/blue
	name = "blue shoes"
<<<<<<< HEAD:code/modules/clothing/shoes/colour.dm
	icon_state = "blue"
	item_color = "blue"

/obj/item/clothing/shoes/sneakers/green
	name = "green shoes"
	icon_state = "green"
	item_color = "green"

/obj/item/clothing/shoes/sneakers/yellow
	name = "yellow shoes"
	icon_state = "yellow"
	item_color = "yellow"

/obj/item/clothing/shoes/sneakers/purple
	name = "purple shoes"
	icon_state = "purple"
	item_color = "purple"
=======
	greyscale_colors = "#16a9eb#ffffff"

/obj/item/clothing/shoes/sneakers/green
	name = "green shoes"
	greyscale_colors = "#54eb16#ffffff"

/obj/item/clothing/shoes/sneakers/yellow
	name = "yellow shoes"
	greyscale_colors = "#ebe216#ffffff"

/obj/item/clothing/shoes/sneakers/purple
	name = "purple shoes"
	greyscale_colors = "#ad16eb#ffffff"
>>>>>>> 6fce5c00a6... Removes item_color (#6349):code/modules/clothing/shoes/color.dm

/obj/item/clothing/shoes/sneakers/brown
	name = "brown shoes"
	icon_state = "brown"
	item_color = "brown"

/obj/item/clothing/shoes/sneakers/red
	name = "red shoes"
	desc = "Stylish red shoes."
<<<<<<< HEAD:code/modules/clothing/shoes/colour.dm
	icon_state = "red"
	item_color = "red"
=======
	greyscale_colors = "#ff2626#ffffff"
>>>>>>> 6fce5c00a6... Removes item_color (#6349):code/modules/clothing/shoes/color.dm

/obj/item/clothing/shoes/sneakers/white
	name = "white shoes"
	icon_state = "white"
	permeability_coefficient = 0.01

/obj/item/clothing/shoes/sneakers/rainbow
	name = "rainbow shoes"
	desc = "Very gay shoes."
	icon_state = "rain_bow"
<<<<<<< HEAD:code/modules/clothing/shoes/colour.dm
	item_color = "rainbow"

/obj/item/clothing/shoes/sneakers/orange
	name = "orange shoes"
	icon_state = "orange"
	item_color = "orange"
=======
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_inhand_left = null
	greyscale_config_inhand_right = null
	greyscale_config_worn = null

/obj/item/clothing/shoes/sneakers/orange
	name = "orange shoes"
	greyscale_colors = "#eb7016#ffffff"
	greyscale_config = /datum/greyscale_config/sneakers_orange
	greyscale_config_worn = /datum/greyscale_config/sneakers_orange_worn
>>>>>>> 6fce5c00a6... Removes item_color (#6349):code/modules/clothing/shoes/color.dm

/obj/item/clothing/shoes/sneakers/orange/attack_self(mob/user)
	if (src.chained)
		src.chained = null
		src.slowdown = SHOES_SLOWDOWN
		new /obj/item/restraints/handcuffs( user.loc )
		src.icon_state = "orange"
	return

/obj/item/clothing/shoes/sneakers/orange/attackby(obj/H, loc, params)
	..()
	// Note: not using istype here because we want to ignore all subtypes
	if (!chained && H.type == /obj/item/restraints/handcuffs)
		qdel(H)
		src.chained = 1
		src.slowdown = 15
		src.icon_state = "orange1"
	return

/obj/item/clothing/shoes/sneakers/orange/allow_attack_hand_drop(mob/user)
	if(ishuman(user))
		var/mob/living/carbon/human/hummie = user
		if(hummie.shoes == src && chained)
			to_chat(hummie, "<span class='warning'>You start taking off your [src]!</span>")
			if(!do_after(hummie,15 SECONDS, src))
				return FALSE
	return ..()

/obj/item/clothing/shoes/sneakers/orange/MouseDrop(atom/over)
	var/mob/m = usr
	if(ishuman(m))
		var/mob/living/carbon/human/hummie = m
		if(hummie.shoes == src && chained)
			to_chat(hummie, "<span class='warning'>You start taking off your [src]!</span>")
			if(!do_after(hummie,15 SECONDS, src))
				return FALSE
	return ..()
