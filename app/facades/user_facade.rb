class UserFacade

  def initialize(username)
    @username = username
  end

  def user

    conn = Faraday.new("https://api.github.com/users/#{@username}")

    response = conn.get

    user_data = JSON.parse(response.body, symbolize_names: true)

    User.new(user_data)
  end
end

