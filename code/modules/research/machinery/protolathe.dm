/obj/machinery/rnd/production/protolathe
	name = "protolathe"
	desc = "Converts raw materials into useful objects."
	icon_state = "protolathe"
	circuit = /obj/item/circuitboard/machine/protolathe
	categories = list(
								"Power Designs",
								"Medical Designs",
								"Bluespace Designs",
								"Stock Parts",
								"Equipment",
								"Tool Designs",
								"Mining Designs",
								"Electronics",
								"Weapons",
								"Ammo",
								"Firing Pins",
								"Computer Parts",
								"Circuitry"
								)
	production_animation = "protolathe_n"
	allowed_buildtypes = PROTOLATHE
<<<<<<< HEAD
=======
	consoleless_interface = TRUE
	requires_console = FALSE
>>>>>>> 08f4aed11c... Add `requires_console = FALSE` to protolathes and circuit imprinters (#5700)

/obj/machinery/rnd/production/protolathe/disconnect_console()
	linked_console.linked_lathe = null
	..()
