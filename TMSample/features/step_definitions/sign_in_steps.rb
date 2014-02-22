Given(/^I am on the Sign In Screen$/) do
   check_element_exists "view marked:'Login to Demo App'"
end

When(/^I sign in with "(.*?)" username and password$/) do |type|
 touch "view marked:'Email'" 
 keyboard_enter_text "test@testname.com" 
 touch "view marked:'Password'" 
 if type == "valid" 
 keyboard_enter_text "testmunk"
 else 
 keyboard_enter_text "invalid" 
 end  
 touch "button marked:'SIGN IN'"
end 

 Then(/^I am "(.*?)" welcome screen$/) do |cond| 
  if cond == 'on'
  check_element_exists "view marked:'Hello world'" 
  else
  check_element_exists "view marked:'Invalid password!'"
 end
end
