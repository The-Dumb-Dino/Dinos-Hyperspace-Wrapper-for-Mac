#!/bin/bash

# Entering the app bundle
SCRIPT_DIR="$(dirname "$0")"
cd "$SCRIPT_DIR" || exit

# Block wine mono installer
export WINEDLLOVERRIDES="mscoree,mshtml="

#	# Debug
#	$SCRIPT_DIR/Wine/bin/wineconsole

# Wine inside the Wrapper
WINE_PATH="$SCRIPT_DIR/Wine/bin/wine"
# FTL .exe
FTL_EXECUTABLE="$SCRIPT_DIR/Drop-FTL-Here/FTLGame.exe"
# Folder for FTL files
FTL_FOLDER="$SCRIPT_DIR/Drop-FTL-Here/"
# Hyperspace related files
HYPERSPACE_INSTANCE="$SCRIPT_DIR/Drop-FTL-Here/xinput1_4.dll"
HYPERSPACE_DOWNGRADED="$SCRIPT_DIR/Drop-FTL-Here/FTLGame_orig.exe"

function OpenFTLFolder() {
    echo "Opening FTL Folder"
    open "$FTL_FOLDER"
    exit 1
}

# Exits the Wrapper
function noGameFiles() {
	EXIT_NO_FILES="Please execute again after you obtained a Windows FTL copy!"
	echo "$EXIT_NO_FILES"
	osascript -e "display dialog \"$EXIT_NO_FILES\" buttons {\"OK\"} default button \"OK\" with title \"EXIT\""
	exit 1
}

# Open FTL folder inside the wrapper
function osascriptAskingOpenFTLFolder() {
    local ASK_TO_OPEN_GAME_FOLDER="Asking if the script should open the FTL folder"
    echo "$ASK_TO_OPEN_GAME_FOLDER"
    responseAskingOpenFTLFolder=$(osascript -e "display dialog \"Do you want to open the FTL folder?\" buttons {\"Yes\", \"No\"} default button \"No\" with title \"Game Files\"")
    if [[ $responseAskingOpenFTLFolder == "button returned:Yes" ]]; then
        OpenFTLFolder
    else
        noGameFiles
    fi
}

# Asks if you want to open the FTL Folder
function osascriptNotifyNotSupported() {
    local DONT_OWN_STEAM_FTL="Auto downloading is not supported for non-Steam! You have to figure out how to obtain a copy yourself"
    echo "$DONT_OWN_STEAM_FTL"
    responseNotifyNotSupported=$(osascript -e "display dialog \"$DONT_OWN_STEAM_FTL.\" buttons {\"OK\"} default button \"OK\" with title \"Auto-Download Not Supported\"")
    if [[ $responseNotifyNotSupported == "button returned:OK" ]]; then
        osascriptAskingOpenFTLFolder
    else
        noGameFiles
    fi
}

# Osascript window asking if FTL is owned on steam
function osascriptAskingIfOwnSteam() {
    local AskingIfOwnSteam="Asking if FTL is owned on Steam"
    echo "$AskingIfOwnSteam"
    responseFTLSteam=$(osascript -e "display dialog \"Do you own FTL on Steam?\" buttons {\"Yes\", \"No\"} default button \"Yes\" with title \"FTL Platform\"")
    if [[ $responseFTLSteam == "button returned:Yes" ]]; then
        AutoDownload
    else
        osascriptNotifyNotSupported
    fi
}

# Auto-Download
function AutoDownload() {
    local AskingIfDownload="Asking if FTL should be downloaded from Steam"
    echo "$AskingIfDownload"
    responseAutoDownload=$(osascript -e "display dialog \"Do you wish to download the windows copy of FTL now?\" buttons {\"Yes\", \"No\"} default button \"Yes\" with title \"FTL Auto-download\"")
    if [[ $responseAutoDownload == "button returned:Yes" ]]; then
        launchSteamCMD
    else
        osascriptAskingOpenFTLFolder
    fi
}

# Launch SteamCMD
function launchSteamCMD() {
    echo "Opening Steam's console"
    open steam://nav/console
    responseAutoDownload=$(osascript -e "display dialog \"Shortly after Steam has launched a new tab with a console promt should open. Please execute this command: 'download_depot 212680 212681'. After it finished downloading move the files into the FTL folder.\" buttons {\"OK\"} default button \"OK\" with title \"Steam Console\"")
    if [[ $responseAutoDownload == "button returned:Yes" ]]; then
        osascriptAskingOpenFTLFolder
    else
        osascriptAskingOpenFTLFolder
    fi
}

# Checking for an FTL installation
function searchingFTLInstallation() {
    echo "Checking if FTL files are present"
    if [ ! -e "Drop-FTL-Here/FTLGame.exe" ]; then
        GameFilesMissing
    else
        checkingHyperspacePresence
    fi
}

# Osascript message stating FTL files are missing
function GameFilesMissing() {
    local FTL_FILES_MISSING="FTL files seem to be missing!"
    echo "$FTL_FILES_MISSING"
    osascript -e "display dialog \"$FTL_FILES_MISSING\" buttons {\"OK\"} default button \"OK\" with title \"Game Files\""
    osascriptAskingIfOwnSteam
}

# Launching FTL Itself
function launchFTL() {
    echo "Launching FTL"
    "$WINE_PATH" "$FTL_EXECUTABLE"
}

# Funktion für das Überprüfen der Hyperspace-Installation
function checkingHyperspacePresence() {
	echo "Checking Hyperspace state"
	if [ -e "$HYPERSPACE_INSTANCE" ]; then
		echo "Hyperspace installation found!"
		# Setting up DLL overwrite for Hyperspace
		$WINE_PATH reg add "HKEY_CURRENT_USER\Software\Wine\DllOverrides" /v "xinput1_4" /t REG_SZ /d "native,builtin" /f
		echo "Applied DLL-overwrite for hooking process"
		if [ -e "$HYPERSPACE_DOWNGRADED" ]; then
			# Launches FTL with the usage of Wine - Hyperspace present
			launchFTL
		else
			# [DIALOG]
			TEXT_NOT_DOWNGRADED="Detected non-downgraded Hyperspace instance! Starting downgrading process"
			echo "$TEXT_NOT_DOWNGRADED"
			osascript -e "display dialog \"$TEXT_NOT_DOWNGRADED.\" buttons {\"OK\"} default button \"OK\" with title \"Downgrading Process\""
			# Launching downgrader
			cd $SCRIPT_DIR/Drop-FTL-Here
			CMD_PATH="$SCRIPT_DIR/Wine/bin/wineconsole"
			$CMD_PATH "downgrade.bat"
			# [DIALOG]
			TEXT_DOWNGRADED_FTL="FTL is now downgraded and should load with Hyperspace"
			echo "$TEXT_DOWNGRADED_FTL"
			osascript -e "display dialog \"$TEXT_DOWNGRADED_FTL.\" buttons {\"OK\"} default button \"OK\" with title \"Downgrading Succesfull\""
			# Launches FTL with the usage of Wine - Hyperspace present
			launchFTL

		fi

	else
		# Launches FTL with the usage of Wine - No Hyperspace
		echo "No Hyperspace installation found launching Vanilla"
		launchFTL
	fi
}

searchingFTLInstallation