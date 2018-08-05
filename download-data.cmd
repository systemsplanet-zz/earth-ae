@REM download-data.cmd [earth.nullschool.net] data file download script
@cls
@REM Run in path containing this script
@cd /D "%~dp0"
@REM Validate "%CURLBIN%" points to curl.exe
@if not defined CURLBIN set "CURLBIN=c:\Program Files\Git\mingw64\bin\curl.exe"
@if not exist "%CURLBIN%" @echo "Error [curl.exe] not found.  Set CURLBIN to the path of your curl.exe. Download from git-scm.com/download/win" && exit /b 1
@echo.&&@echo.&&@echo.&&@echo Downloading [earth.nullschool.net] data files using ["%CURLBIN%"]
@pause
@echo.&&@echo.&&@echo.
@REM These files are not automatically updated
@REM            HOST                   PATH                    FILE
@REM            "earth.nullschool.net" "/"                     "index.html"
@REM            "earth.nullschool.net" "/js"                   "bundle.js.map"
@REM            "earth.nullschool.net" "/js"                   "bundle.min.js?v20180521"
@REM            "earth.nullschool.net" "/styles"               "fontawesome$sub.woff2?v2"
@REM            "earth.nullschool.net" "/styles"               "mplus$2p$light$sub.woff2?v3"

@REM save session cookie
"%CURLBIN%"  --cookie-jar  cookies.txt "earth.nullschool.net"    >nul 2>&1
@call :download "earth.nullschool.net" "/data"                   "earth-topo-mobile.json"                                   "?v3"
@call :download "earth.nullschool.net" "/data"                   "earth-topo.json"                                          "?v3"
@call :download "gaia.nullschool.net"  "/data/cams/current"      "current-pm1-cams.epak"
@call :download "gaia.nullschool.net"  "/data/cams/current"      "current-pm10-cams.epak"
@call :download "gaia.nullschool.net"  "/data/cams/current"      "current-pm2p5-cams.epak"
@call :download "gaia.nullschool.net"  "/data/geos/current"      "current-co2sc-geos.epak"
@call :download "gaia.nullschool.net"  "/data/geos/current"      "current-cosc-geos.epak"
@call :download "gaia.nullschool.net"  "/data/geos/current"      "current-duexttau-geos.epak"
@call :download "gaia.nullschool.net"  "/data/geos/current"      "current-so2smass-geos.epak"
@call :download "gaia.nullschool.net"  "/data/geos/current"      "current-suexttau-geos.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-air_density-isobaric-10hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-cape-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-cape-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-mean_sea_level_pressure-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-mean_sea_level_pressure-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-misery_index-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-misery_index-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-precip_3hr-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-precip_3hr-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-relative_humidity-isobaric-10hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-relative_humidity-surface-level-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-temp-isobaric-10hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-temp-surface-level-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_cloud_water-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_cloud_water-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_precipitable_water-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-total_precipitable_water-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-1000hPa-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-10hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-10hPa-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-250hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-250hPa-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-500hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-500hPa-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-700hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-700hPa-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-70hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-70hPa-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-850hPa-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-850hPa-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-surface-level-gfs-0.25.epak"
@call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-surface-level-gfs-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/ovation/current"   "current-ovation.json"
@call :download "gaia.nullschool.net"  "/data/rtgsst/current"    "current-sea_surface_temp-rtg-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/rtgsst/current"    "current-sea_surface_temp_anomaly-rtg-0.5.epak"
@call :download "gaia.nullschool.net"  "/data/ww3/current"       "current-primary-wave-30m.epak"
@REM TODO:
@REM @call :download "gaia.nullschool.net"  "/data/oscar"             "oscar-catalog.json"                                       ""      "--header  'origin: https://earth.nullschool.net'"  "--header 'accept: application/json,*/*'"
@REM @call :download "gaia.nullschool.net"  "/data/ww3/current"       "current-sig_height-wave-30m.epak"                         ""      "--header  'origin: https://earth.nullschool.net'"
@REM @call :download "gaia.nullschool.net"  "/data/oscar"             "20180801-surface-currents-oscar-0.33.epak"
@REM @call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-wind-isobaric-1000hPa-gfs-0.25.epak"                             
@REM @call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-primary-wave-30m.epak"                            ""      "-v  --header  'Origin: https://earth.nullschool.net'"
@REM @call :download "gaia.nullschool.net"  "/data/gfs/current"       "current-sig_height-wave-30m.epak"                         ""      "--header  'origin: https://earth.nullschool.net'"
@echo Download complete.
@pause
@exit /B 0

:download
@set "host=%~1"
@set "dir=%~2"
@set "windir=%dir:/=\%" REM replace / with \           
@set "file=%~3"
@set "qp=%~4"
@set "ca=%~5"
@mkdir .%windir% >nul 2>&1
@REM ,application/json   , br
"%CURLBIN%" --cookie cookies.txt  %ca% --header "Host: %host%"  --header "accept-encoding: gzip, deflate"  --header "pragma: no-cache" --header "cache-control: no-cache" --header "accept: */*" --header "dnt: 1" --header "user-agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36" --header "referer: https://%host%/" --header "accept-language: en-US,en;q=0.9" --compressed -L "https://%host%%dir%/%file%%qp%" --output ".%windir%\%file%" 
@exit /B 0
