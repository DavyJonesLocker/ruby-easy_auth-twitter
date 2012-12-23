module EasyAuth::Models::Identities::Oauth::Twitter
  def account_attributes_map
    { :username => 'screen_name', :screen_name => 'screen_name' }
  end

  def authorize_path
    '/oauth/authenticate'
  end

  def retrieve_uid(token)
    token.params[:user_id]
  end

  def site_url
    'https://api.twitter.com'
  end
end
