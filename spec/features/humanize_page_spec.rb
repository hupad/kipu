require 'rails_helper'

feature 'Humanize a number' do
	
	scenario "User enters a empty value, should return valid error message", :js do
		
		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "")

		click_on "Humanize"

		expect(page).to have_content("Input cannot be empty.")
	end

	scenario "User enters a non integer, should return error message", :js do

		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "kasjfka")

		click_on "Humanize"

		expect(page).to have_content("Only numbers are allowed")
	end

	scenario "User enters a valid integer, should humanize the entered number", :js do
		
		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "123")

		click_on "Humanize"

		expect(page).to have_content("123".to_i.humanize)
	end

	scenario "User enters a negative integer, should humanize the entered number", :js do

		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "-123")

		click_on "Humanize"

		expect(page).to have_content("-123".to_i.humanize)
	end	

	scenario "User enters a float value, should humanize the entered number", :js do

		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "123.99")

		click_on "Humanize"

		expect(page).to have_content("123.99".to_i.humanize)
	end	

end