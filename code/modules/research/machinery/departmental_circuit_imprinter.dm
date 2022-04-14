/obj/machinery/rnd/production/circuit_imprinter/department
	name = "department circuit imprinter"
	desc = "A special circuit imprinter with a built in interface meant for departmental usage, with built in ExoSync receivers allowing it to print designs researched that match its ROM-encoded department type."
	icon_state = "circuit_imprinter"
	circuit = /obj/item/circuitboard/machine/circuit_imprinter/department
<<<<<<< HEAD
	requires_console = FALSE
	consoleless_interface = TRUE
=======
>>>>>>> 0df5bf9dad... Fix production machines being unusable (#5675)

/obj/machinery/rnd/production/circuit_imprinter/department/science
	name = "department circuit imprinter (Science)"
	circuit = /obj/item/circuitboard/machine/circuit_imprinter/department/science
	allowed_department_flags = DEPARTMENTAL_FLAG_ALL|DEPARTMENTAL_FLAG_SCIENCE
	department_tag = "Science"
