/obj/item/clothing/head/soft
<<<<<<< HEAD
	name = "cargo cap"
	desc = "It's a baseball hat in a tasteless yellow colour."
	icon_state = "cargosoft"
	item_state = "helmet"
	item_color = "cargo"

	dog_fashion = /datum/dog_fashion/head/cargo_tech

	var/flipped = 0

/obj/item/clothing/head/soft/dropped()
	src.icon_state = "[item_color]soft"
	src.flipped=0
	..()

/obj/item/clothing/head/soft/verb/flipcap()
	set category = "Object"
	set name = "Flip cap"

	flip(usr)
=======
	name = "white cap"
	desc = "It's a baseball hat in a tasteless white colour."
	icon_state = "mimesoft"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

	///Is the hat flipped?
	var/flipped = FALSE
	///The color of the hat. Another knockoff item_color. Nice. Make this into GAGS sprites at some point, please.
	var/soft_color = "mime"

/obj/item/clothing/head/soft/AltClick(mob/user)
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	else
		flip(user)

/obj/item/clothing/head/soft/proc/flip(mob/user)
	if(!user.incapacitated())
<<<<<<< HEAD
		src.flipped = !src.flipped
		if(src.flipped)
			icon_state = "[item_color]soft_flipped"
			to_chat(user, "<span class='notice'>You flip the hat backwards.</span>")
		else
			icon_state = "[item_color]soft"
=======
		flipped = !flipped
		if(flipped)
			icon_state = "[soft_color]soft_flipped"
			to_chat(user, "<span class='notice'>You flip the hat backwards.</span>")
		else
			icon_state = "[soft_color]soft"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)
			to_chat(user, "<span class='notice'>You flip the hat back in normal position.</span>")
		user.update_inv_head()	//so our mob-overlays update

/obj/item/clothing/head/soft/examine(mob/user)
	. = ..()
	. += "<span class='notice'>Alt-click the cap to flip it [flipped ? "forwards" : "backwards"].</span>"

/obj/item/clothing/head/soft/red
	name = "red cap"
	desc = "It's a baseball hat in a tasteless red colour."
	icon_state = "redsoft"
<<<<<<< HEAD
	item_color = "red"
	dog_fashion = null
=======
	soft_color = "red"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/blue
	name = "blue cap"
	desc = "It's a baseball hat in a tasteless blue colour."
	icon_state = "bluesoft"
<<<<<<< HEAD
	item_color = "blue"
	dog_fashion = null
=======
	soft_color = "blue"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/green
	name = "green cap"
	desc = "It's a baseball hat in a tasteless green colour."
	icon_state = "greensoft"
<<<<<<< HEAD
	item_color = "green"
	dog_fashion = null
=======
	soft_color = "green"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/yellow
	name = "yellow cap"
	desc = "It's a baseball hat in a tasteless yellow colour."
	icon_state = "yellowsoft"
<<<<<<< HEAD
	item_color = "yellow"
	dog_fashion = null
=======
	soft_color = "yellow"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/grey
	name = "grey cap"
	desc = "It's a baseball hat in a tasteful grey colour."
	icon_state = "greysoft"
<<<<<<< HEAD
	item_color = "grey"
	dog_fashion = null
=======
	soft_color = "grey"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/orange
	name = "orange cap"
	desc = "It's a baseball hat in a tasteless orange colour."
	icon_state = "orangesoft"
<<<<<<< HEAD
	item_color = "orange"
	dog_fashion = null

/obj/item/clothing/head/soft/mime
	name = "white cap"
	desc = "It's a baseball hat in a tasteless white colour."
	icon_state = "mimesoft"
	item_color = "mime"
	dog_fashion = null
=======
	soft_color = "orange"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/purple
	name = "purple cap"
	desc = "It's a baseball hat in a tasteless purple colour."
	icon_state = "purplesoft"
<<<<<<< HEAD
	item_color = "purple"
	dog_fashion = null
=======
	soft_color = "purple"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/black
	name = "black cap"
	desc = "It's a baseball hat in a tasteless black colour."
	icon_state = "blacksoft"
<<<<<<< HEAD
	item_color = "black"
	dog_fashion = null
=======
	soft_color = "black"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/rainbow
	name = "rainbow cap"
	desc = "It's a baseball hat in a bright rainbow of colors."
	icon_state = "rainbowsoft"
<<<<<<< HEAD
	item_color = "rainbow"
	dog_fashion = null
=======
	soft_color = "rainbow"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/sec
	name = "security cap"
	desc = "It's a robust baseball hat in tasteful red colour."
	icon_state = "secsoft"
<<<<<<< HEAD
	item_color = "sec"
=======
	soft_color = "sec"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)
	armor = list("melee" = 30, "bullet" = 25, "laser" = 25, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 50, "stamina" = 30)
	strip_delay = 60

/obj/item/clothing/head/soft/sec/brig_phys
	name = "security medic cap"
	icon_state = "secmedsoft"
<<<<<<< HEAD
	item_color = "secmed"
=======
	soft_color = "secmed"
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)

/obj/item/clothing/head/soft/emt
	name = "EMT cap"
	desc = "It's a baseball hat with a dark turquoise color and a reflective cross on the top."
	icon_state = "emtsoft"
<<<<<<< HEAD
	item_color = "emt"
	dog_fashion = null
=======
	soft_color = "emt"

/obj/item/clothing/head/soft/cargo
	name = "cargo cap"
	desc = "It's a baseball hat in a tasteless yellow colour."
	icon_state = "cargosoft"
	soft_color = "cargosoft"

	dog_fashion = /datum/dog_fashion/head/cargo_tech
>>>>>>> 9e15ee3182... Refactor/documentation on various headwear (#6507)
