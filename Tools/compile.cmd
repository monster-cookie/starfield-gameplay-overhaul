@echo off

@REM Get Caprica from https://github.com/Orvid/Caprica currently installed is old manual compile -- v0.3.0 causes a io stream failure

@REM Notepad++/VSCODE needs current working directory to be where Caprica.exe is 
cd "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Tools"

@REM Clear Dist DIR
@echo "Clearing and scafolding the Dist dir"
del /s /q "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist\*.*"
rmdir /s /q "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist"
mkdir "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist"

@REM Clear Dist-BA2-Main DIR
@echo "Clearing and scafolding the Dist-BA2-Main dir"
del /s /q "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\*.*"
rmdir /s /q "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main"
mkdir "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main"
mkdir "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\Scripts\"
mkdir "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\terrain\"
mkdir "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\lodsettings\"
mkdir "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects\"

@REM Compile and deploy Scripts to Dist-BA2-Main folder
@echo "Compiling all script in Source/Papyrus to Dist-BA2-Main folder"
"D:\Program Files\PexTools\Caprica-0.3.0.exe" --game starfield --import "C:\Repositories\Public\Starfield-Script-Source;C:\Repositories\Public\Starfield Mods\starfield-venpi-core\Source\Papyrus;C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Papyrus" --output "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\Scripts" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Papyrus" -R -q && (
  @echo "Compile all scripts has successfully compiled"
  (call )
) || (
  @echo "Error:  Compile all scripts has failed to compile <======================================="
  exit /b 1
)

@REM Deploy LOD to Dist-BA2-Main folder
@echo "Deploy LOD to Dist-BA2-Main folder"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\LOD\VENWORKS_WORLD_DEBUG.lod" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\lodsettings"

@REM Deploy Meshes to Dist-BA2-Main folder
@echo "Deploy Meshes (VENWORKS_WORLD_DEBUG) to Dist-BA2-Main folder"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.1.-1.-1.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.1.-1.0.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.1.-1.1.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.1.0.-1.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.1.0.-2.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.1.0.0.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.1.0.1.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.2.-1.-1.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.2.-1.-3.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.2.-1.1.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.4.-3.-3.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.4.-3.1.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Meshes\VENWORKS_WORLD_DEBUG.8.-3.-3.nif" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\meshes\terrain\VENWORKS_WORLD_DEBUG\objects"

@REM Deploy Terrain to Dist-BA2-Main folder
@echo "Deploy Terrain to Dist-BA2-Main folder"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\Terrain\VENWORKS_WORLD_DEBUG.btd" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\terrain"

@REM ESM is purely binary so need to pull from starfield dir where xedit has to have it 
@echo "Copying the ESM from MO2 into the Dist folder"
copy /y "D:\MO2Staging\Starfield\mods\VenpiDebugTools-Experimental\VenpiDebugTools.esm" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\ESM"
copy /y "D:\MO2Staging\Starfield\mods\VenpiDebugTools-Experimental\VenpiDebugTools.esm" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist"

@REM Use Spriggit to extract record from ESM
@echo "Running Spriggit to extract record from ESM"
"D:\Program Files\Spriggit\Spriggit.CLI.exe" serialize --InputPath "D:\MO2Staging\Starfield\mods\VenpiDebugTools-Experimental\VenpiDebugTools.esm" --OutputPath "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Source\ESM-VenpiDebugTools-Extracted" --GameRelease Starfield --PackageName Spriggit.Yaml

@REM Create and copy the BA2 Main Archive to Dist folder
@echo "Creating the BA2 Main Archive"
"D:\Program Files\xEdit\BSArch64.exe" pack "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main" "VenpiDebugTools - Main.ba2" -sf1 -mt && (
  @echo "Main Archive successfully assembled"
  (call )
) || (
  @echo "ERROR:  Main Archive failed to assemble <======================================="
  exit /b 1
)

@REM Copying the BA2 Archives to the Dist folder
@echo "Copying the BA2 Archives to the Dist folder"
copy /y "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist-BA2-Main\VenpiDebugTools - Main.ba2" "C:\Repositories\Public\Starfield Mods\starfield-debug-tools\Dist"
