require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }
		
  	it { should have_content('Agile Budget') }
   it { should have_title(full_title('')) }
   it { should_not have_title('| Home') }
	end
	
	describe "Help page" do
		before { visit help_path }
		
		it { should have_content('Help') }
		it { should have_title(full_title('Help')) }
	end
	
	describe "Pricing page" do
		before { visit pricing_path }
		
		it { should have_content('Pricing') }
		it { should have_title(full_title('Pricing')) }
	end
	
	describe "Contact page" do
		before { visit contact_path }
		
		it { should have_content('Contact') }
		it { should have_title(full_title('Contact')) }
	end
end