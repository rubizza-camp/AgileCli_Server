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
    @user = User.new(github_login: user.login, node: user.node_id)
    render(json: Api::V1::UserSerializer.new(@user).serialized_json) if @user.save
  end
end
