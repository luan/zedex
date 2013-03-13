require 'spec_helper'

describe "login" do
  let(:user) { create :user }

  it "allows user to login with email" do
    visit '/users/sign_in'
    fill_in :user_login, with: user.email
    fill_in :user_password, with: 'password'
    click_button 'Sign in'

    expect(page).to have_content I18n.t('devise.sessions.signed_in')
  end

  it "allows user to login with username" do
    visit '/users/sign_in'
    fill_in :user_login, with: user.username
    fill_in :user_password, with: 'password'
    click_button 'Sign in'

    expect(page).to have_content I18n.t('devise.sessions.signed_in')
  end
end
