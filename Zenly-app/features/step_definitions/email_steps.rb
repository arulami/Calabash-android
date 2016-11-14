
#enter email id
And(/^I enter email id "([^"]*)"$/) do |email_ID|
  set_default_device(@@email)
  wait_for_elements_exist("*", :timeout => 20, :retry_frequency => 1, :post_timeout => 0.5, :screenshot_on_error => false)
  fail("email app not launched") unless !query("*").empty?
  touch("* id:'to'")
  keyboard_enter_text(email_ID)
end

#verify zenly subject and message content
And(/^I verify Zenly default Subject and message content$/) do
  subject = query("* id:'subject'").first['text']
  #modify
  fail("Subject is not displayed") if subject == ""
  puts "subject is displayed as: #{subject}"
  message_content = query("* id:'message_content'").first['text']
  fail("message content is not displayed") if message_content == ""
  puts "message content is displayed as: #{message_content}"
end

#send email
Then(/^I tap send$/) do
  #send email
  touch("* id:'send'")
  sleep 10
  set_default_device(@@zenly)
end