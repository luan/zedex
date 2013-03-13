require 'spec_helper'

describe "registration" do
  it "allows the user to sign up" do
    visit '/users/sign_up'
    fill_in :user_username, with: 'bob'
    fill_in :user_email, with: 'my_emai@example.com'
    fill_in :user_password, with: 'password'
    fill_in :user_password_confirmation, with: 'password'
    click_button 'Sign up'

    user = User.last

    expect(page).to have_content 'Welcome! You have signed up successfully'
    expect(user.username).to eq 'bob'
    expect(Player.last.user).to eq user
  end
end
