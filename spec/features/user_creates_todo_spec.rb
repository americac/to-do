require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    sign_in  # Took out visit root_path, sign_in is called first from within the Features module
    create_todo "Buy eggs"
    expect(page).to display_todo "Buy eggs"
    #expect(page).to have_css ".todos li", text: "Buy eggs"
  end
end
