require 'calabash-android/management/app_installation'


AfterConfiguration do |config|

  #modified
  path1 = File.expand_path("Zenly Locator Realtime GPS_v1.1.91_apkpure.com.apk")
  @@zenly = Calabash::Android::Operations::Device.new(self, nil, "34801", path1, test_server_path(path1), 7103)

  path2 = File.expand_path("Email mail box fast mail_v1.10_apkpure.com.apk")
  @@email = Calabash::Android::Operations::Device.new(self, nil, "34802", path2, test_server_path(path2), 7104)

end

Before do |scenario|
  extend Calabash::Android::Operations

  @@email.start_test_server_in_background

  @@zenly.start_test_server_in_background
  set_default_device(@@zenly)
end

#for Initial installation
Before('@reinstall') do |scenario|
  @@email.reinstall_apps
  @@email.start_test_server_in_background
  sleep 5
  @@zenly.reinstall_apps
  @@zenly.start_test_server_in_background
  set_default_device(@@email)
end



