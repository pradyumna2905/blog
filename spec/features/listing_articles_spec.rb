require 'rails_helper'

RSpec.feature "Listing Articles" do

   before do
    @article1 = Article.create(title: "First article", body: "The is totally random")
    @article2 = Article.create(title: "Second article", body: "The is even more random")
   end

    scenario "List all articles" do
        visit "/"

        expect(page).to have_content(@article1.title)
        expect(page).to have_content(@article1.body)

        expect(page).to have_content(@article2.title)
        expect(page).to have_content(@article2.title)

        expect(page).to have_link(@article1.title)
        expect(page).to have_link(@article2.title)

        expect(page).not_to have_link("New Article")
    end
end
