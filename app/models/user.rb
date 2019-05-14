class User
  attr_reader :login,
              :id,
              :username,
              :company,
              :location

  def initialize(data)
    @login = data[:login]
    @id = data[:id]
    @username = data[:username]
    @company = data[:company]
    @location = data[:location]
  end

end
