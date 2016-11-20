require 'rails_helper'

feature 'Humanize a number' do
	scenario "User enters a valid number it should humanize the entered number", :js do
		
		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "123")

		click_on "Humanize"

		expect(page).to have_content("123".to_i.humanize)
	end

	scenario "User enters a non integer, it should return zero", :js do

		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "kasjfka")

		click_on "Humanize"

		expect(page).to have_content("zero")
	end

	scenario "User enters a negative integer, it should humanize the entered number", :js do

		visit "/"
		
		click_on "Click here"

		fill_in('number', with: "-123")

		click_on "Humanize"

		expect(page).to have_content("-123".to_i.humanize)
	end	
end