require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    visit root_path
    fill_in "Description", with: "New Todo"
    click_on "Save"
    expect(page).to have_content('All todos')
    expect(page).to have_content('New Todo')
  end
end
