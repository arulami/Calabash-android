#Calabash-android installation guide for Zenly

    We are going to use email app and Zenly app for temporary sharing location

1. Delete the email app if already present in emulator or Device 

2. clone the project using

```
$ git clone https://github.com/arulami/Calabash-android.git
```

- In Terminal go to project folder ZenlyInstall command to install both Zenly and email app as a initial set up
 
 ```
 $ cd Zenly-app
 $ bundle install
 # emulator cmd
 $ calabash-android run Zenly\ Locator\ Realtime\ GPS_v1.1.91_apkpure.com.apk --tags @reinstall 
 ```
 
3. Then run Test the Zenly app for location sharing 
 
 ```
 $ calabash-android run Zenly\ Locator\ Realtime\ GPS_v1.1.91_apkpure.com.apk --tags @location_sharing
 ```
 
3. To run on Device additionally pass Args of serial no. of Device by adb cmd

```
$ adb devices # to get Device serial No
```

```
#Device cmd
$ calabash-android run ADB_DEVICE_ARGS=<serial_No> Zenly\ Locator\ Realtime\ GPS_v1.1.91_apkpure.com.apk --tags @location_sharing
```

