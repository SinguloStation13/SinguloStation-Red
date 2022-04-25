/obj/machinery/atmospherics/components/binary
	icon = 'icons/obj/atmospherics/components/binary_devices.dmi'
	dir = SOUTH
	initialize_directions = SOUTH|NORTH
	use_power = IDLE_POWER_USE
	device_type = BINARY
	layer = GAS_PUMP_LAYER

/obj/machinery/atmospherics/components/binary/SetInitDirections()
	switch(dir)
		if(NORTH, SOUTH)
			initialize_directions = NORTH|SOUTH
		if(EAST, WEST)
			initialize_directions = EAST|WEST

/obj/machinery/atmospherics/components/binary/hide(intact)
	update_icon()
	..()

/obj/machinery/atmospherics/components/binary/getNodeConnects()
	return list(turn(dir, 180), dir)

///Used by binary devices to set what the offset will be for each layer
/obj/machinery/atmospherics/components/binary/proc/set_overlay_offset(pipe_layer)
<<<<<<< HEAD
	switch(pipe_layer)
		if(2)
			return 1
		if(1, 3)
			return 2
=======
	return pipe_layer & 1 ? 1 : 2
>>>>>>> 3834d50a29... ports 5 piping layers from tg (#6039)
