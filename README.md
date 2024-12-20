# Clear DirectX Cache Script
This script is made for CS2 players to reduce lags by clearing cache files. Valve, despite swimming in cash, released CS2, which feels like an indie game made on a $1,000 budget 😆
Well, we move on and wait for them to fix it. Meanwhile, let’s clear our caches ourselves. 

## Which folders are cleared:

**AMD:**
- _%USERPROFILE%\AppData\Local\AMD\DxCache_
- _%USERPROFILE%\AppData\Local\AMD\DxcCache_
- _%USERPROFILE%\AppData\LocalLow\AMD_

**NVIDIA:**
- _%USERPROFILE%\AppData\Local\NVIDIA\DxCache_
- _%USERPROFILE%\AppData\Local\NVIDIA\DxcCache_
- _%USERPROFILE%\AppData\LocalLow\NVIDIA_

## How to use this script?

> [!TIP]
> It's recommended to run the script as an administrator (right-click the .bat file and select "Run as Administrator"). While it's not mandatory, it ensures the script can access all necessary files.

1. Download the .bat file and save it somewhere handy.
2. Run it by double-clicking.
3. After seeing banner press any key and wait till all caches will be removed.

## Not comfortable using a script?

You can do it manually:
1. Press _Win + R_, type `appdata`, and hit Enter.
2. Navigate to these folders:
  - _Local\AMD_ or _Local\NVIDIA_
  - _LocalLow\AMD_ or _LocalLow\NVIDIA_
3. Delete the files in DxCache and DxcCache folders.

## How often should you do this?
I recommend clearing the cache after every CS2 update to avoid lags.
