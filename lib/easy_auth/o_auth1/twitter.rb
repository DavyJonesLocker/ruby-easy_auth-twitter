require 'easy_auth/twitter/engine'

module EasyAuth
  def self.o_auth1_twitter_identity_model(controller)
    EasyAuth::Identities::OAuth1::Twitter
  end

  module OAuth1::Twitter
    extend ActiveSupport::Autoload
    autoload :Controllers
  end

  module Controllers::Sessions
    include EasyAuth::OAuth1::Twitter::Controllers::Sessions
  end

  module Models::Identities::OAuth1
    autoload :Twitter
  end
end
