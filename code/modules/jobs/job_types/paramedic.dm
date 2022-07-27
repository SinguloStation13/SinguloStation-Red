/datum/job/paramedic
	title = JOB_NAME_PARAMEDIC
	flag = PARAMEDIC
	department_head = list(JOB_NAME_CHIEFMEDICALOFFICER)
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the chief medical officer"
	selection_color = "#d4ebf2"
	chat_color = "#8FBEB4"
	exp_requirements = 120
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/paramedic

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CLONING, ACCESS_MECH_MEDICAL, ACCESS_MINERAL_STOREROOM,
					ACCESS_MAINT_TUNNELS, ACCESS_EVA, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_AUX_BASE)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CLONING, ACCESS_MECH_MEDICAL, ACCESS_MAINT_TUNNELS,
					ACCESS_EVA, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_AUX_BASE)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_MED

	display_order = JOB_DISPLAY_ORDER_MEDICAL_DOCTOR
<<<<<<< HEAD:code/modules/jobs/job_types/emt.dm
	departments = DEPARTMENT_MEDICAL
=======
	departments = DEPARTMENT_BITFLAG_MEDICAL
	rpg_title = "Corpse Runner"
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093):code/modules/jobs/job_types/paramedic.dm

	species_outfits = list(
		SPECIES_PLASMAMAN = /datum/outfit/plasmaman/paramedic
	)
<<<<<<< HEAD:code/modules/jobs/job_types/emt.dm
/datum/outfit/job/emt
	name = "Paramedic"
	jobtype = /datum/job/emt

	id = /obj/item/card/id/job/med
	belt = /obj/item/pda/medical
=======
	biohazard = 25//deal with sick like MDS, but also muck around in maint and get into the thick of it

/datum/outfit/job/paramedic
	name = JOB_NAME_PARAMEDIC
	jobtype = /datum/job/paramedic

	id = /obj/item/card/id/job/paramedic
	belt = /obj/item/pda/paramedic
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093):code/modules/jobs/job_types/paramedic.dm
	ears = /obj/item/radio/headset/headset_med
	gloves = /obj/item/clothing/gloves/color/latex/nitrile
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	shoes = /obj/item/clothing/shoes/sneakers/white
	head = /obj/item/clothing/head/soft/paramedic
	suit =  /obj/item/clothing/suit/toggle/labcoat/paramedic
	l_hand = /obj/item/storage/firstaid/medical
	l_pocket = /obj/item/pinpointer/crew
	suit_store = /obj/item/sensor_device

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med

	chameleon_extras = /obj/item/gun/syringe
