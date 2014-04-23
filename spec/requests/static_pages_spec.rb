require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Agile Budget'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Agile Budget')
    end
    
    it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Agile Budget | Home")
    end
  end
	
	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		
		it "should have the right title" do
			visit '/static_pages/help'
			expect(page).to have_title("Agile Budget | Help")
		end
	end
	
	describe "Pricing page" do
		it "should have the content 'Pricing Options'" do
			visit '/static_pages/pricing'
			expect(page).to have_content('Pricing Options')
		end
		
		it "should have the right title" do
			visit '/static_pages/pricing'
			expect(page).to have_title("Agile Budget | Pricing")
		end
	end
end