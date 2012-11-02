require 'spec_helper'

feature 'Twitter OAuth Authentication', :js do
  use_vcr_cassette 'twitter_oauth', :match_requests_on => [:uri], :decode_compressed_response => true

  scenario 'Twitter link redirects to the Twitter OAuth url' do
    visit root_path

    click_link 'Twitter'
    current_url.should match /^https:\/\/api\.twitter\.com\/oauth/
  end

  scenario 'Handling a Twitter callback' do
    visit o_auth1_callback_path(:provider => :twitter, :oauth_token => 'test-auth-code')

    current_path.should eq dashboard_path
    page.should have_content '123456789'
  end
end
