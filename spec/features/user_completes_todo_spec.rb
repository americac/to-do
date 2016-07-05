require "rails_helper"

feature "User completes todo" do
  scenario "Sucessfull" do
    sign_in  # Took out visit root_path, sign_in is called first from within the Features module
    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"
    click_on "Mark complete"
    expect(page).to have_css ".todos li.completed", text: "Buy milk"
  end
end
