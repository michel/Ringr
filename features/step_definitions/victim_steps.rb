Given /^I am on the new victim page$/ do
  visit '/facebook/'
end

Given /^I fill in the form with Michels contact info$/ do
  fill_in "victim_name", with: "Michel"
  fill_in "victim_telephone_number", with: "0031600000"

  click_button "Troll!"
end

Then /^I receive an URL that contains the GUID$/ do
  page.should have_content Victim.last.guid
end

