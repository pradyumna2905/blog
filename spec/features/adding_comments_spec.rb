require 'rails_helper'

RSpec.feature "Adding reviews to articles" do

  before do
    @john = User.create(email: "john@example.com", password: "password")
    @fred = User.create(email: "fred@example.com", password: "password")

    @article = Article.create(title: "the first article", body: "body of the first article", user: @john)
  end

  scenario "Permit signed in users to write reviews" do
    login_as(@fred)

    visit "/"

    click_link @article.title

    fill_in "New Comment", with: "good read"

    click_button "Add Comment"

    expect(page).to have_content("Your comment has been posted")
    expect(page).to have_content("good read")

    expect(current_path).to eq(article_path(@article.comments.last.id))
  end
end
