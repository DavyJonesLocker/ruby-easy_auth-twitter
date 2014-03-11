require 'spec_helper'

feature 'Twitter OAuth Authentication', :js, :vcr do
 scenario 'Twitter link redirects to the Twitter OAuth url' do
    visit root_path

    click_link 'Twitter'
    current_url.should match /^https:\/\/api\.twitter\.com\/oauth/
  end

  scenario 'Handling a Twitter callback' do
    visit oauth_callback_path(:provider => :twitter, :oauth_token => 'test-auth-token', oauth_verifier: 'test-verifier-token')

    current_path.should eq dashboard_path
    page.should have_content 'test_user'
  end
end
