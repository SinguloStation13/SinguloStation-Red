/datum/job/gimmick //gimmick var must be set to true for all gimmick jobs BUT the parent
	title = JOB_NAME_GIMMICK
	flag = GIMMICK
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 0
	spawn_positions = 0
	supervisors = "no one"
	selection_color = "#dddddd"
	chat_color = "#FFFFFF"

	exp_type_department = EXP_TYPE_GIMMICK

	access = list(ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	paycheck = PAYCHECK_ASSISTANT
	paycheck_department = ACCOUNT_CIV

	display_order = JOB_DISPLAY_ORDER_ASSISTANT
<<<<<<< HEAD
	departments = DEPARTMENT_SERVICE
=======
	departments = DEPARTMENT_BITFLAG_SERVICE
	rpg_title = "Peasant"
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)

	allow_bureaucratic_error = FALSE
	outfit = /datum/outfit/job/gimmick

/datum/outfit/job/gimmick
	can_be_admin_equipped = FALSE // we want just the parent outfit to be unequippable since this leads to problems

/datum/job/gimmick/barber
	title = JOB_NAME_BARBER
	flag = BARBER
<<<<<<< HEAD
=======
	supervisors = "the head of personnel"
	department_head = list(JOB_NAME_HEADOFPERSONNEL)
	department_flag = CIVILIAN
	gimmick = TRUE

>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)
	outfit = /datum/outfit/job/gimmick/barber
	access = list(ACCESS_MORGUE, ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_MORGUE, ACCESS_MAINT_TUNNELS)
<<<<<<< HEAD
	gimmick = TRUE
	chat_color = "#bd9e86"
=======
	paycheck = PAYCHECK_ASSISTANT
	paycheck_department = ACCOUNT_SRV

	departments = DEPARTMENT_BITFLAG_SERVICE
	rpg_title = "Scissorhands"
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)

	species_outfits = list(
		SPECIES_PLASMAMAN = /datum/outfit/plasmaman
	)

/datum/outfit/job/gimmick/barber
	name = JOB_NAME_BARBER
	jobtype = /datum/job/gimmick/barber

	belt = /obj/item/pda/unlicensed
	ears = /obj/item/radio/headset
	uniform = /obj/item/clothing/under/suit/sl
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/storage/wallet
	l_pocket = /obj/item/razor/straightrazor
	can_be_admin_equipped = TRUE

/datum/job/gimmick/stage_magician
	title = JOB_NAME_STAGEMAGICIAN
	flag = MAGICIAN
<<<<<<< HEAD
	outfit = /datum/outfit/job/gimmick/magician
	access = list(ACCESS_THEATRE, ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_THEATRE, ACCESS_MAINT_TUNNELS)
	gimmick = TRUE
	chat_color = "#b898b3"
=======
	supervisors = "the head of personnel"
	department_head = list(JOB_NAME_HEADOFPERSONNEL)
	department_flag = CIVILIAN
	gimmick = TRUE

	outfit = /datum/outfit/job/gimmick/stage_magician

	access = list(ACCESS_THEATRE, ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_THEATRE, ACCESS_MAINT_TUNNELS)
	paycheck = PAYCHECK_MINIMAL
	paycheck_department = ACCOUNT_SRV

	departments = DEPARTMENT_BITFLAG_SERVICE
	rpg_title = "Master Illusionist"
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)

	species_outfits = list(
		SPECIES_PLASMAMAN = /datum/outfit/plasmaman/magic
	)

/datum/outfit/job/gimmick/stage_magician
	name = JOB_NAME_STAGEMAGICIAN
	jobtype = /datum/job/gimmick/stage_magician

<<<<<<< HEAD
=======
	id = /obj/item/card/id/job/stage_magician
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)
	belt = /obj/item/pda/unlicensed
	head = /obj/item/clothing/head/that
	ears = /obj/item/radio/headset
	neck = /obj/item/bedsheet/magician
	uniform = /obj/item/clothing/under/suit/black_really
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/white
	l_hand = /obj/item/cane
	backpack_contents = list(/obj/item/choice_beacon/magic=1)
	can_be_admin_equipped = TRUE

<<<<<<< HEAD
/datum/job/gimmick/hobo
	title = "Debtor"
	flag = HOBO
	outfit = /datum/outfit/job/gimmick/hobo
	access = list(ACCESS_MAINT_TUNNELS)
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	gimmick = TRUE
	chat_color = "#929292"
	departments = NONE		//being hobo is not a real job

	species_outfits = list(
		SPECIES_PLASMAMAN = /datum/outfit/plasmaman/hobo
	)

/datum/outfit/job/gimmick/hobo
	name = "Debtor"
	jobtype = /datum/job/gimmick/hobo
	belt = /obj/item/pda/unlicensed
	head = /obj/item/clothing/head/foilhat
	ears = null //hobos dont start with a headset
	uniform = /obj/item/clothing/under/pants/jeans
	suit = /obj/item/clothing/suit/jacket
	can_be_admin_equipped = TRUE

/datum/outfit/job/gimmick/hobo/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	to_chat(H, "<span class='userdanger'>Although you're down on your luck, you're still a nanotrasen employee, and you are held to the same legal standards.</span>")
	var/list/possible_drugs = list(/obj/item/storage/pill_bottle/happy, /obj/item/storage/pill_bottle/zoom, /obj/item/storage/pill_bottle/stimulant, /obj/item/storage/pill_bottle/lsd, /obj/item/storage/pill_bottle/aranesp, /obj/item/storage/pill_bottle/floorpill/full)
	var/chosen_drugs = pick(possible_drugs)
	var/obj/item/storage/pill_bottle/I = new chosen_drugs(src)
	H.equip_to_slot_or_del(I,ITEM_SLOT_BACKPACK)
	var/datum/martial_art/psychotic_brawling/junkie = new //this fits well, but i'm unsure about it, cuz this martial art is so fucking rng dependent i swear...
	junkie.teach(H)
	ADD_TRAIT(H, TRAIT_APPRAISAL, JOB_TRAIT)


/datum/job/gimmick/shrink
	title = "Psychiatrist"
	flag = SHRINK
	outfit = /datum/outfit/job/gimmick/shrink
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_MEDICAL)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_MEDICAL)
	paycheck = PAYCHECK_EASY
	gimmick = TRUE
	chat_color = "#a2dfdc"
	departments = DEPARTMENT_MEDICAL
=======
/datum/job/gimmick/psychiatrist
	title = JOB_NAME_PSYCHIATRIST
	flag = PSYCHIATRIST
	supervisors = "the chief medical officer"
	department_head = list(JOB_NAME_CHIEFMEDICALOFFICER)
	department_flag = MEDSCI
	gimmick = TRUE

	outfit = /datum/outfit/job/gimmick/psychiatrist

	access = list(ACCESS_MAINT_TUNNELS, ACCESS_MEDICAL)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_MEDICAL)
	paycheck = PAYCHECK_EASY
	departments = DEPARTMENT_BITFLAG_MEDICAL
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)

	species_outfits = list(
		SPECIES_PLASMAMAN = /datum/outfit/plasmaman
	)

/datum/outfit/job/gimmick/psychiatrist //psychiatrist doesnt get much shit, but he has more access and a cushier paycheck
	name = JOB_NAME_PSYCHIATRIST
	jobtype = /datum/job/gimmick/psychiatrist

<<<<<<< HEAD
=======
	id = /obj/item/card/id/job/psychiatrist
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)
	belt = /obj/item/pda/medical
	ears = /obj/item/radio/headset/headset_med
	uniform = /obj/item/clothing/under/suit/black
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(/obj/item/choice_beacon/pet/ems=1)
	can_be_admin_equipped = TRUE

/datum/job/gimmick/vip
	title = JOB_NAME_VIP
	flag = CELEBRITY
<<<<<<< HEAD
	outfit = /datum/outfit/job/gimmick/celebrity
	access = list(ACCESS_MAINT_TUNNELS) //Assistants with shitloads of money, what could go wrong?
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	gimmick = TRUE
	paycheck = PAYCHECK_VIP //our power is being fucking rich
	chat_color = "#ebc96b"
=======
	department_flag = CIVILIAN
	gimmick = TRUE

	outfit = /datum/outfit/job/gimmick/vip

	access = list(ACCESS_MAINT_TUNNELS) //Assistants with shitloads of money, what could go wrong?
	minimal_access = list(ACCESS_MAINT_TUNNELS)
	paycheck = PAYCHECK_VIP  //our power is being fucking rich
	paycheck_department = ACCOUNT_CIV

	departments = DEPARTMENT_BITFLAG_SERVICE // might need to be changed
	rpg_title = "Master of Patronage"
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)

	species_outfits = list(
		SPECIES_PLASMAMAN = /datum/outfit/plasmaman/vip
	)

/datum/outfit/job/gimmick/vip
	name = JOB_NAME_VIP
	jobtype = /datum/job/gimmick/vip

<<<<<<< HEAD
	belt = /obj/item/pda/celebrity
=======
	id = /obj/item/card/id/gold/vip
	belt = /obj/item/pda/vip
>>>>>>> e128c6cae9... Modernize job strings into DEFINES (#7093)
	glasses = /obj/item/clothing/glasses/sunglasses/advanced
	ears = /obj/item/radio/headset/heads //VIP can talk loud for no reason
	uniform = /obj/item/clothing/under/suit/black_really
	shoes = /obj/item/clothing/shoes/laceup
	can_be_admin_equipped = TRUE
