# Dino's Hyperspace Wrapper for Mac
## About:
A noob friendly solution utilizing [wine](https://www.winehq.org) to run [FTL: Hyperspace](https://github.com/FTL-Hyperspace/FTL-Hyperspace) and mods like [FTL: Multiverse](https://ftlmultiverse.fandom.com/wiki/FTL:_Multiverse_Wiki) on MacOS. Also able to run Vanilla FTL.
(Supporting x86 and ARM)

## Installing FTL:
At first download the [latest](https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/releases) wrapper. I reccomend moving it into the Applications folder.
After that you should get a copy of FTL for Windows and download the latest version of [Hyperspace](https://github.com/FTL-Hyperspace/FTL-Hyperspace/releases) aswell.

*How to download Windows-FTL (steam):* The Wrapper guides you through the process if you own FTL on Steam

*How to download Windows-FTL (GOG):* I don't have FTL on gog but I belive you can simply download the windows version in the GOG client

### Step 1: Inside the wrapper
Navigate into the wrapper by left-clicking on it and pressing "View package contents".
<img width="853" alt="DHW S1 - View Content" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/4d77ddbb-ab9f-4f16-b68f-c914bb5ff114">

### Step 2: FTL Location
Navigate to "Drop-FTL-Here"
<img width="1230" alt="DHW S2 - Navigate to FTL Destination" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/e624f345-83f4-417f-8f8d-36a90e6fd55e">

### Step 3: Copying files
Ensure that your FTL and Hyperspace files are prepared. Transfer them by dragging or copying them into the designated folder.
<img width="853" alt="DHW S4 - Copy FTL Files" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/f6e7b5ab-4e2a-44e3-aa5e-22d5bb18cb75">

### Step 4: First launch
Congrats! Now you can launch the wrapper for the first time by left-clicking and selecting "open".
<img width="853" alt="DHW S5 - Launch Wrapper" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/48898526-ed59-4bb0-82e8-05128e6389e5">

### Step 5: Finishing Hyperspace installation
After launching the wrapper it will check if Hyperspace is present and if it is downgraded or not. Downgrading is an automated process and is managed for you. 

First you will see this window stating that hyperspace has been found but not downgraded yet.
<img width="532" alt="DHW S8 FTL succesfully downgraded - " src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/df4eb6ae-cb99-40b7-a8ce-e37d47c4bda6">

This creepy window doesn't do much, when it's done you can press enter and it will go away.
<img width="769" alt="DHW S7 - Downgrading FTL" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/2ba6e316-948b-4dfe-a186-3f12e51569bb">

If nothing went wrong you should see this window, just press OK and FTL will start.
<img width="532" alt="DHW S6 - FTL not downgraded" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/1d28167c-345f-4a27-af52-50b950deda30">

Note: Before installing hyperspace, make sure to patch the ftl.dat file with your desired mods. Otherwise, hyperspace will not be fully installed (temporarily).

## Installing Multiverse with Slipstream Mod Manager:

FTL Multiverse is the most popular FTL mod, and is often why you're installing Hyperspace. Here's how you can install it:

1. Download the Slipstream Mod Manager for Unix from the [SMM thread](https://subsetgames.com/forum/viewtopic.php?f=12&t=17102&sid=84a48e3fdd232c8c6ad5ca3b6cea5475)
2. Unzip it and move all the contents (including modman.jar) into the Drop-FTL-Here folder
3. Create a modman.cfg file and paste the contents below. We do this because the folder selector for the mod manager doesn't work well inside of MacOS app bundles
4. Download the 2 raw files (Multiverse 5.4 - Assets (Patch above Data).zip and Multiverse 5.4  - Data.zip as of 2024-01-25) for Multiverse from the [Multiverse thread](https://subsetgames.com/forum/viewtopic.php?f=11&%20t=35332#:~:text=main%20FTL%20folder.-,DOWNLOAD%20RAW%20FILES,-%28OTHER%20PLATFORMS%2C%20UPDATES): look for the "Download Raw Files" section
6. Move both of them into the Drop-FTL-Here/mods folder
7. Open up modman.jar within the Drop-FTL-Here folder. You may need to right-click and then click Open

Drag the items so that the "Assets" is above the "Data" (per instructions) and check the checkboxes, then click Patch

<details>
<summary>modman.cfg contents</summary>
  
```
#
# allow_zip         - Sets whether to treat .zip files as .ftl files. Default: false.
# ftl_dats_path     - The path to FTL's resources folder. If invalid, you'll be prompted.
# steam_distro      - If true, FTL was installed via Steam. Stops the GUI asking for a path.
# steam_exe_path    - The path to Steam's executable, if FTL was installed via Steam.
# run_steam_ftl     - If true, SMM will use Steam to launch FTL, if possible.
# never_run_ftl     - If true, there will be no offer to run FTL after patching. Default: false.
# update_catalog    - If a number greater than 0, check for new mod descriptions every N days.
# update_app        - If a number greater than 0, check for newer app versions every N days.
# use_default_ui    - If true, no attempt will be made to resemble a native GUI. Default: false.
# remember_geometry - If true, window geometry will be saved on exit and restored on startup.
#
# manager_geometry  - Last saved position/size/etc of the main window.
#
#Thu Jan 25 23:32:02 PST 2024
update_catalog=7
remember_geometry=true
steam_exe_path=
run_steam_ftl=
allow_zip=true
steam_distro=false
update_app=4
ftl_dats_path=/Applications/Dino's-Hyperspace-Wrapper.app/Contents/MacOS/Drop-FTL-Here
use_default_ui=false
never_run_ftl=false
```

</details>

## Troubleshooting

### File/App is damaged and cannot be opened

This happens because the contents of the `.app` bundle don't match the original contents. You can try to clear this attribute by running `xattr -cr /Applications/Dino\'s-Hyperspace-Wrapper.app` in Terminal.

## Known issues:
- Sound bugs/tearing caused by Wine.
- Longer loading times on Apple Silicon Mac's caused by Rosetta translation.
- Secondary FTL window in the dock after downgrade, fixed by restarting the wrapper.

## Special Thanks to:
- Onceuponaban: Made the logo for the Wrapper using SaltyFriedRice's art
- @hsource: Wrote Install Instrcutions for SMM/Multiverse
#
If you face any problems, want to give feedback or request a feature please message me on discord. - "thedumbdino"
