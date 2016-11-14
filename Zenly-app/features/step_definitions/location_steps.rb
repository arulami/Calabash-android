#launch app
When(/^I launch app$/) do
  wait_for_elements_exist("*", :timeout => 10, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
  fail("Zenly app not launched") unless !query("*").empty?
end

#verify welcome message
Then(/^I see Welcome message$/) do
  wait_for_elements_exist("* id:'welcome_message'", :timeout => 10, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
  welcome = query("* id:'welcome_message'").first['text']
  puts "Welcome message displayed as: #{welcome}"
end

#verify settings
Then(/^I should see settings$/) do
  wait_for_elements_exist("* id:'nav_menu_settings_btn'", :timeout => 60, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
end

#verify ghost button
And(/^I see ghost button$/) do
  element_exists("* id:'nav_menu_ghost_btn'")
end

#verify mao
And(/^I see Google map$/) do
  fail("Google map is not displying") unless element_exists("* id:'map'")
end
#tap ghost button
Then(/^I tap on ghost button$/) do
  touch("* id:'nav_menu_ghost_btn'")
end

#verify precise and Select all
And(/^I should see Precise and SelectAll$/) do
  wait_for_elements_exist("* text:'Precise'", :timeout => 30, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
  element_exists("* id:'selectAll'")
end

#press back by adb cmd
Then(/^I tap Back$/) do
  sleep 3
  system("adb shell input keyevent 4")
end

#verify Friends icon
Then(/^I should see Friends icon$/) do
  wait_for_elements_exist("* text:'Friends'", :timeout => 30, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
  element_exists("* text:'Friends'")
end

#tap sharing
Then(/^I tap on Sharing$/) do
  if element_exists("* text:'Sharing'")
  touch("* text:'Sharing'")
  else
    fail("Sharing icon is not displaying")
  end
end

#tap email options
And(/^I tap on email option$/) do
  #handle existing one if exists
  if element_exists("* text:'Stop'")
    #stop
    touch("* text:'Stop'")
    sleep 3
  end
  wait_for_elements_exist("* text:'E-mail'", :timeout => 30, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
  touch("* text:'E-mail'")
end

#verify sharing screen
Then(/^I should see Sharing started screen$/) do
  wait_for_elements_exist("* text:'Sharing started'", :timeout => 30, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
end

#verify counter
And(/^I should see counter$/) do
  count_down = query("* id:'count_down'").first['text']
  puts "count down is displayed as: #{count_down}"
end

#verify Extend by mins
And(/^I should see Extend "([^"]*)" mins and stop button$/) do |mins|
  element_exists("* text:'Extend by #{mins} minutes'")
  element_exists("* text:'Stop'")
end

#verify position shared url
And(/^I see position shared url$/) do

  element_exists("* text:'Your position is shared at'")
  temp_share = query("* id:'temp_share_url'").first['text']
  fail("temporary location link is not displayed") unless temp_share.include? "https://live.zen.ly"
  puts "Your position is shared at: #{temp_share}"
  sleep 10
end


When(/^I install apps$/) do
  wait_for_elements_exist("*", :timeout => 10, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)

end