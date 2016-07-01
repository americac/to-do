require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    sign_in  # Took out visit root_path, sign_in is called first from within the Features module
    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"
    expect(page).to have_css ".todos li", text: "Buy milk"
  end
end
