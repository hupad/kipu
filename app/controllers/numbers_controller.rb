class NumbersController < ApplicationController

	def index
	end

	def humanize
		@number = params[:number].to_i.humanize
	end
end