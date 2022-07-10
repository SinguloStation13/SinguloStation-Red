/datum/job/hydro
	title = "Botanist"
	flag = BOTANIST
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	chat_color = "#95DE85"

	outfit = /datum/outfit/job/botanist

	access = list(ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_KITCHEN, ACCESS_MORGUE, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_HYDROPONICS, ACCESS_MORGUE, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SRV
	display_order = JOB_DISPLAY_ORDER_BOTANIST
	departments = DEPARTMENT_SERVICE

	species_outfits = list(
		SPECIES_PLASMAMAN = /datum/outfit/plasmaman/botany
	)
/datum/outfit/job/botanist
	name = "Botanist"
	jobtype = /datum/job/hydro

<<<<<<< HEAD
	id = /obj/item/card/id/job/serv
	belt = /obj/item/pda/botanist
=======
	id = /obj/item/card/id/job/botanist
	belt = /obj/item/pda/service
>>>>>>> f55507eb3d... Hud icons are now based on ID card styles (+crew monitor, crew manifest are based on hud icons than job names + chameleon agent card QoL) (#7112)
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/hydroponics
	suit = /obj/item/clothing/suit/apron
	gloves = /obj/item/clothing/gloves/botanic_leather
	suit_store = /obj/item/plant_analyzer

	backpack = /obj/item/storage/backpack/botany
	satchel = /obj/item/storage/backpack/satchel/hyd


