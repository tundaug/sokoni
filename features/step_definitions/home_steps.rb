Given(/^I visit the home page$/) do
    visit "/"
end

Then(/^I should see hello world$/) do
    expect(page).to have_content "hello world"
end

