require 'rails_helper'

feature "a user can search for a GitHub User" do
  scenario "with a valid username" do
    visit "/"
    fill_in "q", with: "mikedao"
    click_on "Get User Info"

    expect(current_path).to eq('/user')
    expect(page).to have_css(".user")
    within(".user") do
      expect(page).to have_css(".login")
      expect(page).to have_css(".id")
      expect(page).to have_css(".name")
      expect(page).to have_css(".company")
      expect(page).to have_css(".location")
    end

  end

end
