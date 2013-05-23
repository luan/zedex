require 'spec_helper'

feature 'navigation', :js do
  scenario 'user is logged in' do
    user = create :user
    login_as user

    visit root_path
    expect(page).to have_content user.username
    expect(page).to have_link 'Logout'
    click_on 'Logout'
    expect(page).not_to have_content user.username
    expect(page).not_to have_link 'Logout'
  end

  scenario 'user is not logged in' do
    visit root_path
    expect(page).to have_link('Login', href: '/users/sign_in')
    expect(page).to have_link('Sign Up', href: '/users/sign_up')
  end
end
