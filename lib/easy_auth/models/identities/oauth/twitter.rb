module EasyAuth::Models::Identities::Oauth::Twitter
 def authorize_path
    '/oauth/authenticate'
  end

  private

  def retrieve_username(token)
    token.params[:user_id]
  end

  def site_url
    'https://api.twitter.com'
  end
end
