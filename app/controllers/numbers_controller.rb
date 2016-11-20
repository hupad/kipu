class NumbersController < ApplicationController

	def index
	end

	def humanize
		@number = params[:number].to_i.to_words
		respond_to do |format|
			format.js
		end
	end
end