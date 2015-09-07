require "rails_helper"

describe "Static pages" do

  describe "Home page" do

    it "タイトルのテスト" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

    it "コンテンツのテスト" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help page" do

    it "タイトルのテスト" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

    it "コンテンツのテスト" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do

    it "タイトルのテスト" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end

    it "コンテンツのテスト" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
