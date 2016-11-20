require "rails_helper"

describe NumbersController do
	describe "POST Humanize" do
		it "converts a number to human readable formatted string" do
			
			post :humanize, params: {number: "123"}

			expect(assigns[:number]).to equal("123".to_i.humanize)
		end
	end
end