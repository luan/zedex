require 'spec_helper'

describe "registration" do
  it "allows the user to sign up" do
    visit '/users/sign_up'
    fill_in :user_username, with: 'bob'
    fill_in :user_email, with: 'my_emai@example.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_button 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully'
    expect(User.last.username).to eq 'bob'
  end
end
