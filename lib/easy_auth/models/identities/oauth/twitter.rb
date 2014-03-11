require 'twitter'

module EasyAuth::Models::Identities::Oauth::Twitter
  extend ActiveSupport::Concern

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = EasyAuth.oauth[:twitter][:client_id]
      config.consumer_secret     = EasyAuth.oauth[:twitter][:secret]
      config.access_token        = self.token[:token]
      config.access_token_secret = self.token[:secret]
    end
  end

  module ClassMethods
    def account_attributes_map
      { :username => 'screen_name', :screen_name => 'screen_name' }
    end

    def authorize_path
      '/oauth/authenticate'
    end

    def retrieve_uid(user_attributes)
      user_attributes[:user_id]
    end

    def site_url
      'https://api.twitter.com'
    end
  end
end
