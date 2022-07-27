<<<<<<< HEAD
=======
//dye registry, add dye colors and their resulting output here if you want the sprite to change instead of just the color.
GLOBAL_LIST_INIT(dye_registry, list(
	DYE_REGISTRY_UNDER = list(
		DYE_RED = /obj/item/clothing/under/color/red,
		DYE_ORANGE = /obj/item/clothing/under/color/orange,
		DYE_YELLOW = /obj/item/clothing/under/color/yellow,
		DYE_GREEN = /obj/item/clothing/under/color/green,
		DYE_BLUE = /obj/item/clothing/under/color/blue,
		DYE_PURPLE = /obj/item/clothing/under/color/lightpurple,
		DYE_BLACK = /obj/item/clothing/under/color/black,
		DYE_WHITE = /obj/item/clothing/under/color/white,
		DYE_RAINBOW = /obj/item/clothing/under/color/rainbow,
		DYE_MIME = /obj/item/clothing/under/rank/civilian/mime,
		DYE_CLOWN = /obj/item/clothing/under/rank/civilian/clown,
		DYE_QM = /obj/item/clothing/under/rank/cargo/quartermaster,
		DYE_LAW = /obj/item/clothing/under/suit/black,
		DYE_CAPTAIN = /obj/item/clothing/under/rank/captain,
		DYE_HOP = /obj/item/clothing/under/rank/civilian/head_of_personnel,
		DYE_HOS = /obj/item/clothing/under/rank/security/head_of_security,
		DYE_CE = /obj/item/clothing/under/rank/engineering/chief_engineer,
		DYE_RD = /obj/item/clothing/under/rank/rnd/research_director,
		DYE_CMO = /obj/item/clothing/under/rank/medical/chief_medical_officer,
		DYE_REDCOAT = /obj/item/clothing/under/costume/redcoat
	),
	DYE_REGISTRY_JUMPSKIRT = list(
		DYE_RED = /obj/item/clothing/under/color/jumpskirt/red,
		DYE_ORANGE = /obj/item/clothing/under/color/jumpskirt/orange,
		DYE_YELLOW = /obj/item/clothing/under/color/jumpskirt/yellow,
		DYE_GREEN = /obj/item/clothing/under/color/jumpskirt/green,
		DYE_BLUE = /obj/item/clothing/under/color/jumpskirt/blue,
		DYE_PURPLE = /obj/item/clothing/under/color/jumpskirt/lightpurple,
		DYE_BLACK = /obj/item/clothing/under/color/jumpskirt/black,
		DYE_WHITE = /obj/item/clothing/under/color/jumpskirt/white,
		DYE_RAINBOW = /obj/item/clothing/under/color/jumpskirt/rainbow
	),
	DYE_REGISTRY_GLOVES = list(
		DYE_RED = /obj/item/clothing/gloves/color/red,
		DYE_ORANGE = /obj/item/clothing/gloves/color/orange,
		DYE_YELLOW = /obj/item/clothing/gloves/color/yellow,
		DYE_GREEN = /obj/item/clothing/gloves/color/green,
		DYE_BLUE = /obj/item/clothing/gloves/color/blue,
		DYE_PURPLE = /obj/item/clothing/gloves/color/purple,
		DYE_BLACK = /obj/item/clothing/gloves/color/black,
		DYE_WHITE = /obj/item/clothing/gloves/color/white,
		DYE_RAINBOW = /obj/item/clothing/gloves/color/rainbow,
		DYE_MIME = /obj/item/clothing/gloves/color/white,
		DYE_CLOWN = /obj/item/clothing/gloves/color/rainbow,
		DYE_QM = /obj/item/clothing/gloves/color/brown,
		DYE_CAPTAIN = /obj/item/clothing/gloves/color/captain,
		DYE_HOP = /obj/item/clothing/gloves/color/grey,
		DYE_HOS = /obj/item/clothing/gloves/color/black,
		DYE_CE = /obj/item/clothing/gloves/color/black,
		DYE_RD = /obj/item/clothing/gloves/color/grey,
		DYE_CMO = /obj/item/clothing/gloves/color/latex/nitrile,
		DYE_REDCOAT = /obj/item/clothing/gloves/color/white
	),
	DYE_REGISTRY_SNEAKERS = list(
		DYE_RED = /obj/item/clothing/shoes/sneakers/red,
		DYE_ORANGE = /obj/item/clothing/shoes/sneakers/orange,
		DYE_YELLOW = /obj/item/clothing/shoes/sneakers/yellow,
		DYE_GREEN = /obj/item/clothing/shoes/sneakers/green,
		DYE_BLUE = /obj/item/clothing/shoes/sneakers/blue,
		DYE_PURPLE = /obj/item/clothing/shoes/sneakers/purple,
		DYE_BLACK = /obj/item/clothing/shoes/sneakers/black,
		DYE_WHITE = /obj/item/clothing/shoes/sneakers/white,
		DYE_RAINBOW = /obj/item/clothing/shoes/sneakers/rainbow,
		DYE_MIME = /obj/item/clothing/shoes/sneakers/black,
		DYE_QM = /obj/item/clothing/shoes/sneakers/brown,
		DYE_CAPTAIN = /obj/item/clothing/shoes/sneakers/brown,
		DYE_HOP = /obj/item/clothing/shoes/sneakers/brown,
		DYE_CE = /obj/item/clothing/shoes/sneakers/brown,
		DYE_RD = /obj/item/clothing/shoes/sneakers/brown,
		DYE_CMO = /obj/item/clothing/shoes/sneakers/brown
	),
	DYE_REGISTRY_FANNYPACK = list(
		DYE_RED = /obj/item/storage/belt/fannypack/red,
		DYE_ORANGE = /obj/item/storage/belt/fannypack/orange,
		DYE_YELLOW = /obj/item/storage/belt/fannypack/yellow,
		DYE_GREEN = /obj/item/storage/belt/fannypack/green,
		DYE_BLUE = /obj/item/storage/belt/fannypack/blue,
		DYE_PURPLE = /obj/item/storage/belt/fannypack/purple,
		DYE_BLACK = /obj/item/storage/belt/fannypack/black,
		DYE_WHITE = /obj/item/storage/belt/fannypack/white
	),
	DYE_REGISTRY_BEDSHEET = list(
		DYE_RED = /obj/item/bedsheet/red,
		DYE_ORANGE = /obj/item/bedsheet/orange,
		DYE_YELLOW = /obj/item/bedsheet/yellow,
		DYE_GREEN = /obj/item/bedsheet/green,
		DYE_BLUE = /obj/item/bedsheet/blue,
		DYE_PURPLE = /obj/item/bedsheet/purple,
		DYE_BLACK = /obj/item/bedsheet/black,
		DYE_WHITE = /obj/item/bedsheet,
		DYE_RAINBOW = /obj/item/bedsheet/rainbow,
		DYE_MIME = /obj/item/bedsheet/mime,
		DYE_CLOWN = /obj/item/bedsheet/clown,
		DYE_QM = /obj/item/bedsheet/qm,
		DYE_LAW = /obj/item/bedsheet/black,
		DYE_CAPTAIN = /obj/item/bedsheet/captain,
		DYE_HOP = /obj/item/bedsheet/hop,
		DYE_HOS = /obj/item/bedsheet/hos,
		DYE_CE = /obj/item/bedsheet/ce,
		DYE_RD = /obj/item/bedsheet/rd,
		DYE_CMO = /obj/item/bedsheet/cmo,
		DYE_COSMIC = /obj/item/bedsheet/cosmos
	)
))

>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)
/obj/machinery/washing_machine
	name = "washing machine"
	desc = "Gets rid of those pesky bloodstains, or your money back!"
	icon = 'icons/obj/machines/washing_machine.dmi'
	icon_state = "wm_1_0"
	density = TRUE
	state_open = TRUE
	var/busy = FALSE
	var/bloody_mess = 0
	var/obj/item/color_source
	var/max_wash_capacity = 5

/obj/machinery/washing_machine/ComponentInitialize()
	. = ..()
	RegisterSignal(src, COMSIG_COMPONENT_CLEAN_ACT, .proc/clean_blood)

/obj/machinery/washing_machine/examine(mob/user)
	. = ..()
	. += "<span class='notice'>Alt-click it to start a wash cycle.</span>"

/obj/machinery/washing_machine/AltClick(mob/user)
	if(!user.canUseTopic(src, !issilicon(user)))
		return

	if(busy)
		return

	if(state_open)
		to_chat(user, "<span class='notice'>Close the door first.</span>")
		return

	if(bloody_mess)
		to_chat(user, "<span class='warning'>[src] must be cleaned up first.</span>")
		return

	busy = TRUE
	update_icon()
	addtimer(CALLBACK(src, .proc/wash_cycle), 200)

	START_PROCESSING(SSfastprocess, src)

/obj/machinery/washing_machine/process(delta_time)
	if(!busy)
		animate(src, transform=matrix(), time=2)
		return PROCESS_KILL
	if(anchored)
		if(DT_PROB(2.5, delta_time))
			var/matrix/M = new
			M.Translate(rand(-1, 1), rand(0, 1))
			animate(src, transform=M, time=1)
			animate(transform=matrix(), time=1)
	else
		if(DT_PROB(0.5, delta_time))
			step(src, pick(GLOB.cardinals))
		var/matrix/M = new
		M.Translate(rand(-3, 3), rand(-1, 3))
		animate(src, transform=M, time=2)

/obj/machinery/washing_machine/proc/clean_blood()
	SIGNAL_HANDLER

	if(!busy)
		bloody_mess = FALSE
		update_icon()

/obj/machinery/washing_machine/proc/wash_cycle()
	for(var/X in contents)
		var/atom/movable/AM = X
		SEND_SIGNAL(AM, COMSIG_COMPONENT_CLEAN_ACT, CLEAN_STRENGTH_BLOOD)
		AM.machine_wash(src)

	busy = FALSE
	if(color_source)
		qdel(color_source)
		color_source = null
	update_icon()

//what happens to this object when washed inside a washing machine
/atom/movable/proc/machine_wash(obj/machinery/washing_machine/WM)
	return

/obj/item/stack/sheet/hairlesshide/machine_wash(obj/machinery/washing_machine/WM)
	new /obj/item/stack/sheet/wetleather(drop_location(), amount)
	qdel(src)

/obj/item/clothing/suit/hooded/ian_costume/machine_wash(obj/machinery/washing_machine/WM)
	new /obj/item/reagent_containers/food/snacks/meat/slab/corgi(loc)
	qdel(src)

/obj/item/paper/machine_wash(obj/machinery/washing_machine/WM)
	if(WM.color_source)
		if(istype(WM.color_source, /obj/item/toy/crayon))
			var/obj/item/toy/crayon/CR = WM.color_source
			add_atom_colour(CR.paint_color, WASHABLE_COLOUR_PRIORITY)
		else
			if(istype(WM.color_source, /obj/item/reagent_containers/food/snacks/grown/rainbow_flower/))
				var/obj/item/reagent_containers/food/snacks/grown/rainbow_flower/RF = WM.color_source
				add_atom_colour(RF.color, WASHABLE_COLOUR_PRIORITY)

/obj/item/clothing/head/mob_holder/machine_wash(obj/machinery/washing_machine/WM)
	..()
	held_mob.machine_wash(WM)

/mob/living/simple_animal/pet/machine_wash(obj/machinery/washing_machine/WM)
	WM.bloody_mess = TRUE
	gib()

/obj/item/clothing/under/machine_wash(obj/machinery/washing_machine/WM)
	freshly_laundered = TRUE
	addtimer(VARSET_CALLBACK(src, freshly_laundered, FALSE), 5 MINUTES, TIMER_UNIQUE | TIMER_OVERRIDE)

/obj/item/clothing/under/color/machine_wash(obj/machinery/washing_machine/WM)
	..()
	jumpsuit_wash(WM)

/obj/item/clothing/under/rank/machine_wash(obj/machinery/washing_machine/WM)
	..()
	jumpsuit_wash(WM)

/obj/item/clothing/under/proc/jumpsuit_wash(obj/machinery/washing_machine/WM)

	if(WM.color_source)
		var/wash_color = WM.color_source.item_color
		var/obj/item/clothing/under/U
		for(var/T in typesof(/obj/item/clothing/under/color))
			var/obj/item/clothing/under/color/J = T
			if(wash_color == initial(J.item_color))
				U = J
				break
		if(!U)
			for(var/T in typesof(/obj/item/clothing/under/rank))
				var/obj/item/clothing/under/rank/R = T
				if(wash_color == initial(R.item_color))
					U = R
					break
		if(U)
			item_state = initial(U.item_state)
			icon_state = initial(U.icon_state)
			item_color = wash_color
			name = initial(U.name)
			dodgy_colours = TRUE
			can_adjust = initial(U.can_adjust)
			if(!can_adjust && adjusted) //we deadjust the uniform if it's now unadjustable
				toggle_jumpsuit_adjust()

//dyed clothing results//

/obj/item/storage/belt/fannypack/machine_wash(obj/machinery/washing_machine/WM)
	if(WM.color_source)
		var/wash_color = WM.color_source.item_color
		for(var/T in typesof(/obj/item/storage/belt/fannypack))
			var/obj/item/storage/belt/fannypack/FP = T
			if(wash_color == initial(FP.item_color))
				item_state = initial(FP.item_state)
				icon_state = initial(FP.icon_state)
				item_color = wash_color
				name = initial(FP.name)
				desc = "The colors are a bit dodgy."
				break

/obj/item/clothing/gloves/color/machine_wash(obj/machinery/washing_machine/WM)
	if(WM.color_source)
		var/wash_color = WM.color_source.item_color
		for(var/T in typesof(/obj/item/clothing/gloves/color))
			var/obj/item/clothing/gloves/color/G = T
			if(wash_color == initial(G.item_color))
				item_state = initial(G.item_state)
				icon_state = initial(G.icon_state)
				item_color = wash_color
				name = initial(G.name)
				desc = "The colors are a bit dodgy."
				break

/obj/item/clothing/shoes/sneakers/machine_wash(obj/machinery/washing_machine/WM)
	if(chained)
		chained = 0
		slowdown = SHOES_SLOWDOWN
		new /obj/item/restraints/handcuffs(loc)
	if(WM.color_source)
		var/wash_color = WM.color_source.item_color
		for(var/T in typesof(/obj/item/clothing/shoes/sneakers))
			var/obj/item/clothing/shoes/sneakers/S = T
			if(wash_color == initial(S.item_color))
				icon_state = initial(S.icon_state)
				item_color = wash_color
				name = initial(S.name)
				desc = "The colors are a bit dodgy."
				break

/obj/item/bedsheet/machine_wash(obj/machinery/washing_machine/WM)
	if(WM.color_source)
		var/wash_color = WM.color_source.item_color
		for(var/T in typesof(/obj/item/bedsheet))
			var/obj/item/bedsheet/B = T
			if(wash_color == initial(B.item_color))
				icon_state = initial(B.icon_state)
				item_color = wash_color
				name = initial(B.name)
				desc = "The colors are a bit dodgy."
				break

/obj/item/clothing/neck/scarf/machine_wash(obj/machinery/washing_machine/WM)
	if(WM.color_source)
		if(istype(WM.color_source, /obj/item/toy/crayon))
			var/obj/item/toy/crayon/CR = WM.color_source
			add_atom_colour(CR.paint_color, WASHABLE_COLOUR_PRIORITY)
		else
			if(istype(WM.color_source, /obj/item/reagent_containers/food/snacks/grown/rainbow_flower/))
				var/obj/item/reagent_containers/food/snacks/grown/rainbow_flower/RF = WM.color_source
				add_atom_colour(RF.color, WASHABLE_COLOUR_PRIORITY)
		name = "dyed scarf"
		desc = "The colors are a bit dodgy."

/obj/item/clothing/head/beanie/machine_wash(obj/machinery/washing_machine/WM)
	if(WM.color_source)
		if(istype(WM.color_source, /obj/item/toy/crayon))
			var/obj/item/toy/crayon/CR = WM.color_source
			add_atom_colour(CR.paint_color, WASHABLE_COLOUR_PRIORITY)
		else
			if(istype(WM.color_source, /obj/item/reagent_containers/food/snacks/grown/rainbow_flower/))
				var/obj/item/reagent_containers/food/snacks/grown/rainbow_flower/RF = WM.color_source
				add_atom_colour(RF.color, WASHABLE_COLOUR_PRIORITY)
		name = "dyed beanie"
		desc = "The colors are a bit dodgy."


/obj/machinery/washing_machine/relaymove(mob/user)
	container_resist(user)

/obj/machinery/washing_machine/container_resist(mob/living/user)
	if(!busy)
		add_fingerprint(user)
		open_machine()



/obj/machinery/washing_machine/update_icon()
	cut_overlays()
	if(busy)
		icon_state = "wm_running_[bloody_mess]"
	else if(bloody_mess)
		icon_state = "wm_[state_open]_blood"
	else
		var/full = contents.len ? 1 : 0
		icon_state = "wm_[state_open]_[full]"
	if(panel_open)
		add_overlay("wm_panel")

/obj/machinery/washing_machine/attackby(obj/item/W, mob/user, params)
	if(panel_open && !busy && default_unfasten_wrench(user, W))
		return

	if(default_deconstruction_screwdriver(user, null, null, W))
		update_icon()
		return

	else if(user.a_intent != INTENT_HARM)

		if (!state_open)
			to_chat(user, "<span class='warning'>Open the door first!</span>")
			return 1

		if(bloody_mess)
			to_chat(user, "<span class='warning'>[src] must be cleaned up first.</span>")
			return 1

		if(contents.len >= max_wash_capacity)
			to_chat(user, "<span class='warning'>The washing machine is full!</span>")
			return 1

		if(!user.transferItemToLoc(W, src))
			to_chat(user, "<span class='warning'>\The [W] is stuck to your hand, you cannot put it in the washing machine!</span>")
			return 1

		if(istype(W, /obj/item/toy/crayon) || istype(W, /obj/item/stamp) || istype(W, /obj/item/reagent_containers/food/snacks/grown/rainbow_flower))
			color_source = W
		update_icon()

	else
		return ..()

/obj/machinery/washing_machine/attack_hand(mob/user)
	. = ..()
	if(.)
		return
	if(busy)
		to_chat(user, "<span class='warning'>[src] is busy.</span>")
		return

	if(user.pulling && user.a_intent == INTENT_GRAB && isliving(user.pulling))
		var/mob/living/L = user.pulling
		if(L.buckled || L.has_buckled_mobs())
			return
		if(state_open)
			if(istype(L, /mob/living/simple_animal/pet))
				L.forceMove(src)
				update_icon()
		return

	if(!state_open)
		open_machine()
	else
		state_open = FALSE //close the door
		update_icon()

/obj/machinery/washing_machine/deconstruct(disassembled = TRUE)
	if (!(flags_1 & NODECONSTRUCT_1))
		new /obj/item/stack/sheet/iron(drop_location(), 2)
	qdel(src)

/obj/machinery/washing_machine/open_machine(drop = 1)
	..()
	density = TRUE //because machinery/open_machine() sets it to 0
	color_source = null
