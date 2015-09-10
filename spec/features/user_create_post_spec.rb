require 'rails_helper'

feature 'User create post in' do 
  scenario "with invalid attributes" do 
    visit new_post_path

    fill_in "post[title]" , with: ""
    fill_in "post[content]", with: ""
  
    click_on "Create Post"
  
    expect(page).to have_content('Teste')

  end
end