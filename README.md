# Earth AE (https://github.com/systemsplanet/earth-ae)

Earth with a **satisfyingly flat** Azimuthal Equidistant projection.

AE presents a clear and obvious explanation for world-wide weather patterns.

Based on [earth.nullschool.net](https://earth.nullschool.net/)  [github](https://github.com/cambecc/earth) for [unknown reasons](https://www.youtube.com/watch?v=6gF9yIcspdE) disabled its AE view.

**Teslas Apple version with AE (NEW)**
- [video](https://www.youtube.com/watch?v=G06GhPU8iiQ)
- [site](http://www.teslasapple.com/eaRth.numbskull.extra.html#current/wind/isobaric/250hPa/azimuthal_equidistant)

# DETAILS

![earth-ae](https://user-images.githubusercontent.com/660529/43685006-f3335862-985f-11e8-8df0-ceab3fca7cfe.png)

## INSTALL

- Click **[earth-ae source](https://github.com/systemsplanet/earth-ae/archive/master.zip)** to download **earth-ae-master**, then right-click the downloaded file and select **Extract All** 


- Click **[Web Server for Chrome](https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb)** to install Chrome Plugin 

- Select **CHOOSE FOLDER** button and browse to the folder where you unzipped Earth AE.

- Move **Web Server** slider to the right to start the local server

- Open this link in Chrome [http://127.0.0.1:8887](http://127.0.0.1:8887)

  
![chrome-web-server](https://user-images.githubusercontent.com/660529/43685075-f65e1404-9860-11e8-98c7-7f804ce94c85.png)


## REFRESH DATA

Earth AE runs locally, so it can't be disabled by the deep state. To refresh its local data files:

- install [gitbash for windows](https://git-scm.com/download/win) for curl.exe  (one time install)

- run this windoze script (it's included in files you extracted above):


        download-data.cmd 





## CHANGE HISTORY

***2018/08/05***

- added back Azimuthal Equidistant (AE) Projection.

  Changes are marked with "// MAL" in **js/bundle.js** and **index.html**
  
- added **download-data.cmd** to refresh data using curl.exe


## TO DO

Some data files do not update due to CORS headers.    
  The work around is to download the files from https://earth.nullschool.net/ using these steps:
  
- Type Ctrl-Shift-I in Chrome to open the debugger. 
- Select the network tab
- Browse to the data you want to refresh
- Double click the data file you need to download it
- Move the downloaded data file, into the same path you downloaded it from, in the local **data** folder 
  
  



