require "rails_helper"

describe NumbersController do
	describe "POST Humanize" do
		
		it "return error message when number is empty" do
			post :humanize, xhr: true, params: {number: ""}

			expect(assigns[:number]).to eq("Input cannot be empty.")
		end
		
		it "returns error message when a string is entered" do
			post :humanize, xhr: true, params: {number: "kaksfja"}

			expect(assigns[:number]).to eq("Only numbers are allowed!")
		end

		it "converts a number to human readable formatted string", :js do

			post :humanize, xhr: true, params: {number: "123"}

			expect(assigns[:number]).to eq("123".to_i.humanize)
		end

		it "converts a negative number to human readable formatted string", :js do
			post :humanize, xhr: true, params: {number: "-123"}

			expect(assigns[:number]).to eq("-123".to_i.humanize)
		end

		it "converts an valid float value to readable format" do
			post :humanize, xhr: true, params: {number: "123.99"}

			expect(assigns[:number]).to eq("123.99".to_f.humanize)
		end

		it "converts a negative valid float value to readable format" do
			post :humanize, xhr: true, params: {number: "-123.99"}

			expect(assigns[:number]).to eq("-123.99".to_f.humanize)
		end
	end
end