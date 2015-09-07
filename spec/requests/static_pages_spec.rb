require "rails_helper"

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "タイトルのテスト" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "コンテンツのテスト" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help page" do

    it "タイトルのテスト" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end

    it "コンテンツのテスト" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do

    it "タイトルのテスト" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end

    it "コンテンツのテスト" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact page" do

    it "タイトルのテスト" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end

    it "コンテンツのテスト" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end
end
