# Dino's Hyperspace Wrapper for Mac
## About:
A noob friendly solution utilizing [wine](https://www.winehq.org) to run [FTL: Hyperspace](https://github.com/FTL-Hyperspace/FTL-Hyperspace) and mods like [FTL: Multiverse](https://ftlmultiverse.fandom.com/wiki/FTL:_Multiverse_Wiki) on MacOS, recommended by the official Hyperspace Team. Also able to run Vanilla FTL.
(Supporting x86 and ARM)

## Trivia: 
The project began as a personal endeavor to create a visually appealing and user-friendly experience for FTL on MacOS. As I continued to work on it, I realized its potential and decided to make it a public project so that everyone can benefit from my work.

&nbsp;

## Youtube guide for people that aren't good with text instructions:
[![Install Guide](https://i.ytimg.com/vi/YqLWWHI291M/maxresdefault.jpg)](https://youtu.be/Dnb5mYeFwa4?si=DSRcXroP9BX93KVV)

&nbsp;

## Setting up Wrapper/Installing FTL:
At first download the [latest](https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/releases) wrapper. I reccomend moving it into the Applications folder.

After that you should get a copy of FTL for Windows and download the latest version of [Hyperspace](https://github.com/FTL-Hyperspace/FTL-Hyperspace/releases) aswell.

And this version of [SMM](https://www.mediafire.com/file/0v4imsp3lqtc32c/SlipstreamModManager_1.9.1-HSMacWrap-Unix.tar.gz). If you already have Slipstream Mod Manager for normal modding, you still need this version because it works differently. Your version does not support the wrapper

&nbsp;
#### Owning FTL on Steam: The Wrapper supports automatic downlading for Steam.
#### Owning FTL on GOG: Please download Windows version 1.6.9 (others **WONT** work) you can choose it in GOG.
#### Owning FTL on Epic: Although it is technically possible to run it, there is no Epic Launcher available for Mac.
#### Other Versions/Epic: Please join the [FTL: Multiverse discord](https://discord.gg/ftlmultiverse), I can help you with that stuff.
&nbsp;
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

Pressing 'OK' will open the next window asking if you own FTL on Steam:
***(if you do not own FTL on Steam, please go to step 3)***.
<img width="532" alt="Bildschirmfoto 2024-02-14 um 12 15 31" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/b2e34a55-d28d-4aae-b15d-4bbf7cc72de7">

Selecting 'Yes' will take you through the 'Auto-Download' opening the Steam Console where you need to paste in the following command; `download_depot 212680 212681`: 
<img width="1056" alt="Bildschirmfoto 2024-01-26 um 12 14 33" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/0b376af7-1aaf-4e45-8797-542f9d2442fe">

After Steam finishes downloading, press OK on this window. It will open the folder where FTL has been downloaded.
<img width="532" alt="Bildschirmfoto 2024-02-14 um 12 13 55" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/9d0b9712-dbf1-4d5e-b57d-725e6bebb1ff">


### Step 3: Copying files
The wrapper will give you the option to open the designated FTL folder with this window. Pressing 'Yes' will open the directory where you are supposed to drop the FTL files.

<img width="532" alt="Bildschirmfoto 2024-01-26 um 12 30 28" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/d09ac5d0-437a-4af4-ab9b-0a41591d1cf1">
<img width="1032" alt="Bildschirmfoto 2024-01-26 um 12 31 44" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/7e6f710d-8724-4759-8981-07f909d64dea">

Make sure your FTL and hyperspace files are ready. Transfer them by dragging or copying them into the new window.
![Bildschirmfoto 2024-02-14 um 12 27 03](https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/87d5e0db-cd0f-4d4d-aa48-c3b41d7e2b86)


### Step 4: Installing Mods With SMM (Slipstream Mod Manager)
Before you can play, you need to install your desired mods, such as FTL: Multiverse. Installing mods for the wrapper is not much different from installing them for basic FTL or other platforms.

First you need to grab the SMM archive you downloaded and unpack it:
<img width="639" alt="Bildschirmfoto 2024-02-14 um 12 59 06" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/2d5588a7-41c4-4d34-b900-ebb4ff00c549">

Now navigate into the new folder, you should now see a bunch of files such as a folder called **mods**.
<img width="1012" alt="Bildschirmfoto 2024-02-14 um 13 00 31" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/73882003-efd6-40ae-9503-b72623fb4d8e">

I recommend deleting all files in the folder.
<img width="973" alt="Bildschirmfoto 2024-02-14 um 13 02 24" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/8798c1d9-09c6-4667-83ca-a48b3fa869d8">

You can now put in other mods. Download Multiverse from its [thread](https://subsetgames.com/forum/viewtopic.php?f=11&%20t=35332#:~:text=main%20FTL%20folder.-,DOWNLOAD%20RAW%20FILES,-%28OTHER%20PLATFORMS%2C%20UPDATES) on The FTL forum. Remember to download both the data and assets files.
<img width="973" alt="Bildschirmfoto 2024-02-14 um 13 08 19" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/e0bd51c6-b4f6-4209-bbd3-63976fd5270f">


Once you have placed the two files into the mods folder, you can return to the Mod Manager. To do this, right-click on the **modman.command** file and select 'open':

<img width="946" alt="Bildschirmfoto 2024-02-14 um 13 10 19" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/e96bf3fe-698a-43a1-bbb7-895dea444ca5">


Just press 'open' once again when you see this window pop up:

<img width="409" alt="Bildschirmfoto 2024-02-14 um 13 15 52" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/6c7ccdae-6fd1-4298-8d8e-b448a4f2cc0d">


When the Mod Manager first launched, you will see a window. Make sure to select 'no' as the specified path is incorrect:

<img width="1025" alt="Bildschirmfoto 2024-02-14 um 13 16 48" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/e7110942-cdbb-4119-91c0-a7f4e4dd9e66">


Selecting 'no' will prompt you to guide the mod manager to the wrapper:

<img width="662" alt="Bildschirmfoto 2024-02-14 um 13 19 36" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/78c9a153-c065-453a-8ac0-334f55d45a01">


Wether FTL was obtained from Steam or not you should still select 'no' here:

<img width="429" alt="Bildschirmfoto 2024-02-14 um 13 20 59" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/c7a0d124-4c72-4dde-a2e1-27026981705f">


Launching for the first time will look like that because the mod manager does not recognize the mods yet:

<img width="620" alt="Bildschirmfoto 2024-02-14 um 13 23 24" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/1f3023ef-c68e-49ce-aa85-62d45fc11925">


To resolve the issue, navigate to File and select Preferences.

<img width="604" alt="Bildschirmfoto 2024-02-14 um 13 26 35" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/a72fbd5d-0f3b-4b7a-a768-cb36bbc8ad5e">


Now enable 'allow zip' and hit 'apply':

<img width="640" alt="Bildschirmfoto 2024-02-14 um 13 30 30" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/9d30a2fc-ac8f-4622-9909-452724786758">


Rescan the mods to make them visible:

<img width="604" alt="Bildschirmfoto 2024-02-14 um 13 26 36" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/52f084d9-637e-4170-8e54-694959e07087">


To install them, simply check all of them and press 'patch'. Make sure to have them in correct order to avoid any issues.

<img width="620" alt="Bildschirmfoto 2024-02-14 um 13 35 40" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/a4065373-7df5-4a0e-a222-57065b692b79">
<img width="746" alt="Bildschirmfoto 2024-02-14 um 13 35 48" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/e1a25db5-2f8a-4435-9108-db2998f1e1f9">


After successfully patching, you can launch FTL from the mod manager if you want to:

<img width="469" alt="Bildschirmfoto 2024-02-14 um 13 36 38" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/4211a46f-8633-49f3-8b2d-80ba69c1b07d">


### Step 5: First launch
Congratulations! Now you can start FTL for the first time if you havent already done so with the mod manager, either double click or left click on the wrapper and select "open".
<img width="853" alt="DHW S5 - Launch Wrapper" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/48898526-ed59-4bb0-82e8-05128e6389e5">


### Step 6: Finishing Hyperspace installation
After launching the wrapper it will check if Hyperspace is present and if it is downgraded or not. Downgrading is an automated process and is managed for you. 

First you will see this window stating that hyperspace has been found but not downgraded yet.
<img width="532" alt="DHW S8 FTL succesfully downgraded - " src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/df4eb6ae-cb99-40b7-a8ce-e37d47c4bda6">

This creepy window doesn't do much, when it's done you can press enter and it will go away.
<img width="769" alt="DHW S7 - Downgrading FTL" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/2ba6e316-948b-4dfe-a186-3f12e51569bb">

If nothing went wrong you should see this window, just press OK and FTL will start.
<img width="532" alt="DHW S6 - FTL not downgraded" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/1d28167c-345f-4a27-af52-50b950deda30">


### Step 7: Play FTL
If everything went smoothly and you have patched your desired mods, the game should start up fine:
<img width="1392" alt="Bildschirmfoto 2024-01-26 um 12 38 40" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/bf902b8c-b5a7-4f0a-809c-c8c1b644a5fa">


&nbsp;

## Troubleshooting

### Wrapper hops for a few times and then closes:
This can happen because the internal script does not like names with empty keys, you must have renamed the application or something.

### FTL freezes loading on E:
Your save files are corrupted. This is a common issue that occurs with Multiverse, don't worry.
Simply delete these files:
<img width="998" alt="Bildschirmfoto 2024-02-14 um 13 43 50" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/10bb35da-b708-4b94-8115-b384de1b3043">

### Downgrading console doesnt show and FTL starts with error "hyperspace.xml" missing:
You have a broken wine prefix, don't worry, it's not harmful. To fix it, go to your Home folder (usually named after your user account) and press **shift + command + .** to view hidden files. Then, delete the '.wine' folder:
<img width="998" alt="Bildschirmfoto 2024-02-14 um 13 48 06" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/d6ad57d6-0172-4c9f-b4e5-6fd4e0395c62">

### Downloading Multiverse only gives folders and no .zip files:
This is caused by a default setting in Safari and some other browsers. 
To resolve it, go to Safari > Preferences > General on the top right bar, and disable 'Open safe files after downloading'. (The setting on the bottom)
<img width="1003" alt="Bildschirmfoto 2024-02-14 um 13 54 16" src="https://github.com/The-Dumb-Dino/Dinos-Hyperspace-Wrapper-for-Mac/assets/77470472/e00a9b8d-62db-4f67-ab82-03ec41fe80e9">

## Known issues:
- Sound bugs/tearing caused by Wine.
- Longer loading times on Apple Silicon Mac's caused by Rosetta translation.
- Secondary FTL window in the dock after downgrade, fixed by restarting the wrapper.

## Special Thanks to:
- Onceuponaban: Made the logo for the Wrapper
- @blizzarchon: Added support for my Wrapper to SMM

#
If you encounter any issues, wish to provide feedback, or request a feature, please inform me through my Discord channel on the [FTL: Multiverse discord](https://discord.gg/ftlmultiverse).
