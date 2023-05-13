# frozen_string_literal: true

When(/^I sign in with existing user data$/) do
  @login_page.login(LOGIN, PASSWORD)
end

Then(/^I see user singed in and redirected to the main page$/) do
  expect(page).to have_content('Hi ' + FIRST_NAME + '!')
end
