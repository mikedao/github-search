require 'rails_helper'

describe User do
  it "has attributes" do
    attributes = {
      login: "mikedao",
      id: 123234,
      username: "Michael Dao",
      company: "@turingschool",
      location: "Denver, CO"
    }

    user = User.new(attributes)

    expect(user.login).to eq("mikedao")
    expect(user.id).to eq(123234)
    expect(user.username).to eq("Michael Dao")
    expect(user.company).to eq("@turingschool")
    expect(user.location).to eq("Denver, CO")


  end
end
