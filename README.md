# Dino's Hyperspace Wrapper for Mac
## About:
A noob friendly solution utilizing [wine](https://www.winehq.org) to run [FTL: Hyperspace](https://github.com/FTL-Hyperspace/FTL-Hyperspace) and mods like [FTL: Multiverse](https://ftlmultiverse.fandom.com/wiki/FTL:_Multiverse_Wiki) on MacOS, recommended by the official Hyperspace Team. Also able to run Vanilla FTL.
(Supporting x86 and ARM)

## Setting up Wrapper/Installing FTL:
At first download the [latest](https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/releases) wrapper. I reccomend moving it into the Applications folder.
After that you should get a copy of FTL for Windows and download the latest version of [Hyperspace](https://github.com/FTL-Hyperspace/FTL-Hyperspace/releases) aswell.

*How to download Windows-FTL (steam):* The Wrapper guides you through the process if you own FTL on Steam

*How to download Windows-FTL (GOG):* I don't have FTL on gog but I belive you can simply download the windows version in the GOG client

### Step 1: Launching the Wrapper
First, open the downloaded .DMG file and drag and drop the Wrapper that inside into your Applications folder. Since I can't afford to sign my program, you'll have to do a few extra clicks.
When you double-click on the wrapper, you get this window saying that the developer cannot be verified:

<img width="409" alt="Bildschirmfoto 2024-01-26 um 12 03 16" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/7ac80440-9aff-4e29-a4cb-6b17a6870503">

Instead, please right-click on the application and select *open*:

<img width="380" alt="Bildschirmfoto 2024-01-26 um 12 03 34" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/713128b0-298e-4f6f-a256-c38419c46e96">

This should open a window like this, still giving you the warning, but allowing you to open the wrapper (after pressing open once, it will not pop up again):

<img width="409" alt="Bildschirmfoto 2024-01-26 um 12 03 50" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/57e88493-e8e5-475e-92ff-0f042ed36b30">


### Step 2: First Launch
When you run it for the first time, a window will pop up telling you that the FTL files are missing:

<img width="532" alt="Bildschirmfoto 2024-01-26 um 12 06 29" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/2de89f64-0f43-4ac0-bc32-fd39fe42c0d2">

Pressing 'OK' will open a second window asking if you own FTL on Steam, pressing 'Yes' will take you through the 'Auto-Download' process and finally open the Steam Console where you will be asked to run `download_depot 212680 212681`: 

***(if you do not own FTL on Steam, please go to step 3)***.

<img width="1056" alt="Bildschirmfoto 2024-01-26 um 12 14 33" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/0b376af7-1aaf-4e45-8797-542f9d2442fe">

After the download is finished, you will need to navigate to `/Users/[YOUR USER]/Library/Application Support/Steam/Steam.AppBundle/Steam/Contents/MacOS/steamapps/content/app_212680/depot_212681`.
To get there, just right-click in the Finder, select *Go To*, and paste the path.

<img width="388" alt="Bildschirmfoto 2024-01-26 um 12 19 22" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/f21ace61-d94a-479a-97f2-03494fc6fe1a">
<img width="572" alt="Bildschirmfoto 2024-01-26 um 12 22 49" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/0396ce24-8a5a-4318-a6c0-57810ebc6cdd">
<img width="955" alt="Bildschirmfoto 2024-01-26 um 12 21 19" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/fd945670-fc8c-4b5a-a2d3-16d9b7a9633b">


### Step 3: Copying files
The wrapper will give you the option to automatically open the designated FTL folder with this window. Pressing 'Yes' will of course open the directory where you are supposed to drop FTL.

<img width="532" alt="Bildschirmfoto 2024-01-26 um 12 30 28" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/d09ac5d0-437a-4af4-ab9b-0a41591d1cf1">
<img width="1032" alt="Bildschirmfoto 2024-01-26 um 12 31 44" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/7e6f710d-8724-4759-8981-07f909d64dea">

Make sure your FTL and hyperspace files are ready. Transfer them by dragging or copying them into the new window.
<img width="853" alt="DHW S4 - Copy FTL Files" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/f6e7b5ab-4e2a-44e3-aa5e-22d5bb18cb75">

### Step 4: First launch
Congratulations! Now you can start FTL for the first time, either double click or left click on the wrapper and select "open".
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


### Step 6: Play FTL
If everything went smoothly and you have already patched your desired mods, the game should start up fine:
<img width="1392" alt="Bildschirmfoto 2024-01-26 um 12 38 40" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/bf902b8c-b5a7-4f0a-809c-c8c1b644a5fa">

## Installing Multiverse/Hyperspace with Slipstream Mod Manager:

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

### Wrapper hops for a few times and then closes:

This can happen because the internal script does not like names with empty keys, you must have renamed the application or something.

## Known issues:
- Sound bugs/tearing caused by Wine.
- Longer loading times on Apple Silicon Mac's caused by Rosetta translation.
- Secondary FTL window in the dock after downgrade, fixed by restarting the wrapper.

## Special Thanks to:
- Onceuponaban: Made the logo for the Wrapper using SaltyFriedRice's art
- @hsource: Wrote Install Instrcutions for SMM/Multiverse
#
If you face any problems, want to give feedback or request a feature please message me on discord. - "thedumbdino"
