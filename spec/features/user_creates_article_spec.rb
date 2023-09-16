require "rails_helper" #  подключение

feature "Article Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t "articles.new_article"
  end
  
  scenario "allows a quest to create article" do
    visit new_article_path
    
    fill_in :article_title, :with => 'first article'
    fill_in :article_text, :with => 'something'
    click_button 'Save Article'

    expect(page).to have_content 'first article'

  end
end