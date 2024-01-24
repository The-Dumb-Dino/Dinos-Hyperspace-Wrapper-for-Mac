#!/bin/bash

# Entering the app bundle
SCRIPT_DIR="$(dirname "$0")"
cd $SCRIPT_DIR

# Block wine mono installer
export WINEDLLOVERRIDES="mscoree,mshtml="

#	# Debug
#	$SCRIPT_DIR/Wine/bin/wineconsole

# Paths inside the Wrapper
WINE_PATH="$SCRIPT_DIR/Wine/bin/wine"
FTL_EXECUTABLE="$SCRIPT_DIR/Drop-FTL-Here/FTLGame.exe"

# Presence of a Hyperspace instance
HYPERSPACE_INSTANCE="xinput1_4.dll"
HYPERSPACE_DOWNGRADED="FTLGame_orig.exe"

# Checking if there is a Hyperspace instance
if [ -e "$SCRIPT_DIR/Drop-FTL-Here/$HYPERSPACE_INSTANCE" ]; then

	# Setting up DLL overwrite for Hyperspace
	$WINE_PATH reg add "HKEY_CURRENT_USER\Software\Wine\DllOverrides" /v "xinput1_4" /t REG_SZ /d "native,builtin" /f

	if [ -e "$SCRIPT_DIR/Drop-FTL-Here/$HYPERSPACE_DOWNGRADED" ]; then

		# Launches FTL with the usage of Wine - Hyperspace present
		$WINE_PATH $FTL_EXECUTABLE

	else

		# [DIALOG]
		#echo "Detected non-downgraded Hyperspace instance! Starting downgrading process."
		TEXT_NOT_DOWNGRADED="Detected non-downgraded Hyperspace instance! Starting downgrading process."
		osascript -e "display dialog \"$TEXT_NOT_DOWNGRADED\" buttons {\"OK\"} default button \"OK\" with title \"Downgrading Process\""

		# Launching downgrader
		cd $SCRIPT_DIR/Drop-FTL-Here
		CMD_PATH="$SCRIPT_DIR/Wine/bin/wineconsole"
		$CMD_PATH "downgrade.bat"

		# [DIALOG]
	    #	echo "FTL is now downgraded and should load with Hyperspace"
		TEXT_DOWNGRADED_FTL="FTL is now downgraded and should load with Hyperspace."
		osascript -e "display dialog \"$TEXT_DOWNGRADED_FTL\" buttons {\"OK\"} default button \"OK\" with title \"Downgrading Succesfull\""

		# Launches FTL with the usage of Wine - Hyperspace present
		$WINE_PATH $FTL_EXECUTABLE

	fi

else
	# Launches FTL with the usage of Wine - No Hyperspace
	$WINE_PATH $FTL_EXECUTABLE
fi


# ----------------------------------------
# Wine64 - Only use if you face issues with default wine config
# Replace WINE_PATH="$SCRIPT_DIR/Wine/bin/wine" with WINE_PATH="$SCRIPT_DIR/Wine/bin/wine64" (Or simply add a 64 behind the wine)