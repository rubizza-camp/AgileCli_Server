class LoginController < ApplicationController
  def oauth
    session_code = request.env["rack.request.query_hash"]["code"]
    response = RestClient.post("https://github.com/login/oauth/access_token",
                               { client_id: CLIENT_ID,
                                 client_secret: CLIENT_SECRET,
                                 code: session_code }, accept: :json)
    access_token = JSON.parse(response)["access_token"]

    client = Octokit::Client.new(access_token: access_token)
    user = client.user
    login = user.login

    secret_node = SecureRandom.uuid
    @existing_user = User.find_by(github_login: login)
    if @existing_user
      render "login/signin"
    else
      @user = User.new(github_login: login, node: secret_node, email: user.email)
      WelcomeMailer.sample_email(@user).deliver if @user.save
    end
  end
end
