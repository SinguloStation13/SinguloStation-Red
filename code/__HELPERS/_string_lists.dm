#define pick_list(FILE, KEY) (pick(strings(FILE, KEY)))
#define pick_list_weighted(FILE, KEY) (pickweight(strings(FILE, KEY)))
#define pick_list_replacements(FILE, KEY) (strings_replacement(FILE, KEY))
#define json_load(FILE) (json_decode(rustg_file_read(FILE)))

GLOBAL_LIST(string_cache)
GLOBAL_VAR(string_filename_current_key)


/proc/strings_replacement(filename, key, directory = "strings")
	load_strings_file(filename, directory)

	if((filename in GLOB.string_cache) && (key in GLOB.string_cache[filename]))
		var/response = pick(GLOB.string_cache[filename][key])
		var/regex/r = regex("@pick\\((\\D+?)\\)", "g")
		response = r.Replace(response, /proc/strings_subkey_lookup)
		return response
	else
		CRASH("strings list not found: [directory]/[filename], index=[key]")

<<<<<<< HEAD
/proc/strings(filename as text, key as text, directory = "strings")
=======
/proc/strings(filename as text, key as text, directory = STRING_DIRECTORY)
	if(IsAdminAdvancedProcCall())
		return

	filename = SANITIZE_FILENAME(filename)
>>>>>>> ab3093c507... Fixes loading admin nicknames (#5805)
	load_strings_file(filename, directory)
	if((filename in GLOB.string_cache) && (key in GLOB.string_cache[filename]))
		return GLOB.string_cache[filename][key]
	else
		CRASH("strings list not found: [directory]/[filename], index=[key]")

/proc/strings_subkey_lookup(match, group1)
	return pick_list(GLOB.string_filename_current_key, group1)

<<<<<<< HEAD
/proc/load_strings_file(filename, directory = "strings")
=======
/proc/load_strings_file(filename, directory = STRING_DIRECTORY)
	if(IsAdminAdvancedProcCall())
		return

>>>>>>> ab3093c507... Fixes loading admin nicknames (#5805)
	GLOB.string_filename_current_key = filename
	if(filename in GLOB.string_cache)
		return //no work to do

	if(!GLOB.string_cache)
		GLOB.string_cache = new

	if(fexists("[directory]/[filename]"))
		GLOB.string_cache[filename] = json_load("[directory]/[filename]")
	else
		CRASH("file not found: [directory]/[filename]")
