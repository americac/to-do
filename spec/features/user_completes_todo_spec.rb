require "rails_helper"

feature "User completes todo" do
  scenario "Sucessfull" do
    sign_in  # Took out visit root_path, sign_in is called first from within the Features module
    create_todo "Buy milk"
    click_on "Mark complete"
    expect(page).to display_completed_todo "Buy milk"
  end
end
