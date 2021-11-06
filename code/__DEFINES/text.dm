/// Prepares a text to be used for maptext. Use this so it doesn't look hideous.
#define MAPTEXT(text) {"<span class='maptext'>[##text]</span>"}

/// Macro from Lummox used to get height from a MeasureText proc
#define WXH_TO_HEIGHT(x) text2num(copytext(x, findtextEx(x, "x") + 1))

#define CENTER(text) {"<center>[##text]</center>"}
<<<<<<< HEAD
=======

#define SANITIZE_FILENAME(text) (GLOB.filename_forbidden_chars.Replace(text, ""))

/// Folder directory for strings
#define STRING_DIRECTORY "strings"
>>>>>>> 99f76fa5d5... Fixes nextmap loading (#5714)
