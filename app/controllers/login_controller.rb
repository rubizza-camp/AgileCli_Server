require "bcrypt"

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
    secret_node = BCrypt::Password.create(user.node_id)
    @user = User.new(github_login: user.login, node: secret_node)
    @user.save
  end
end
