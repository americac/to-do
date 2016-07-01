require "rails_helper"

feature "User visits homepage" do # like describe in rspec
  scenario "Successfully" do # like it in rspec
    visit root_path # go to homepage

    expect(page).to have_css 'h1', text: 'Todos' # check if page has a h1 tag with text of "Todos"
  end
end
