require "rails_helper"

describe NumbersController do
	describe "POST Humanize" do
		it "converts a number to human readable formatted string", :js do

			post :humanize, xhr: true, params: {number: "123"}

			expect(assigns[:number]).to eq("123".to_i.humanize)
		end

		it "converts a negative number to human readable formatted string", :js do
			post :humanize, xhr: true, params: {number: "-123"}

			expect(assigns[:number]).to eq("-123".to_i.humanize)
		end

		it "converts an invalid number to zero" do
			post :humanize, xhr: true, params: {number: "kaksfja"}

			expect(assigns[:number]).to eq("kaksfja".to_i.humanize)
		end
	end
end