#Calabash-android installation guide for Zenly

  Test email app and Zenly app for temporary sharing location using calabash-android

- Delete the email app if already present in emulator or Device 

- Clone the project using

```
$ git clone https://github.com/arulami/Calabash-android.git
```

- In Terminal go to project folder Zenly-app and follow commands to install both Zenly and email app as a initial set up
 
```
 $ cd Zenly-app
 $ bundle install
 # for emulator 
 $ calabash-android run Zenly\ Locator\ Realtime\ GPS_v1.1.91_apkpure.com.apk --tags @reinstall 
 
```
  1. Manually Configure your email in email app to send emails
  2. Manually configure and Authenticate Zenly by receiving SMS
  3. Test the Zenly app for location sharing if you want in emulator using below cmd:
 
```
 $ calabash-android run Zenly\ Locator\ Realtime\ GPS_v1.1.91_apkpure.com.apk --tags @location_sharing
 
```
 
- To run on Device additionally pass Args of serial no. of Device by adb cmd and repeat installations steps
    

```
$ adb devices # to get Device serial No
```

```
$ calabash-android run ADB_DEVICE_ARGS=<serial_No> Zenly\ Locator\ Realtime\ GPS_v1.1.91_apkpure.com.apk --tags @reinstall

```
  1. Manually Configure your email in email app to send emails
  2. Manually configure and Authenticate Zenly by receiving SMS
  3. Test the Zenly app for location sharing if you want in Device using below cmd:
   

```
#Device cmd
$ calabash-android run ADB_DEVICE_ARGS=<serial_No> Zenly\ Locator\ Realtime\ GPS_v1.1.91_apkpure.com.apk --tags @location_sharing
```

   *Note: I have controlled installation of apps using @reinstall, So please run as an initial set up to configure email and Zenly
   Don't run with other tags*
   
###Trouble shooting

   please refer following link to run calabash android if you get error for keystore
   [keystore](https://github.com/calabash/calabash-android/wiki/Running-Calabash-Android)
   
###Reference for calabash-android
   [calabash-android](https://github.com/calabash/calabash-android)