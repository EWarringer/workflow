require 'rails_helper'

feature 'user registers', %Q{
  As a visitor
  I want to register
  So that I can create an account
} do

# Acceptance Criteria:
# * I must specify all the required information
# * If I don't I am presented with an error message
# * I am notified if I confirm the wrong password.

  scenario 'provide valid registration information' do
    visit root_path
    click_link "Sign Up"
    fill_in 'Email', with: 'jeffsampson@example.com'
    fill_in 'First Name', with: 'Jeff'
    fill_in 'Last Name', with: 'Sampson'
    fill_in 'user_password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(page).to have_content('Sign out')
  end

  scenario 'provide invalid registration information' do
    visit root_path
    click_link 'Sign Up'
    click_button 'Sign up'
    expect(page).to have_content('can\'t be blank')
    expect(page).to_not have_content('Sign out')
  end

  scenario 'password confirmation does not match confirmation' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'user_password', with: 'password'
    fill_in 'Password Confirmation', with: 'password2'

    click_button 'Sign up'

    expect(page).to have_content('doesn\'t match')
    expect(page).to_not have_content('Sign out')
  end
end
