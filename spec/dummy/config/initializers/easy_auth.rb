EasyAuth.config do |c|
  c.o_auth1_client :twitter, ENV['OAUTH_TWITTER_CLIENT_ID'], ENV['OAUTH_TWITTER_SECRET']
end
