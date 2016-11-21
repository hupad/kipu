class NumbersController < ApplicationController

	def index
	end

	def humanize
		@number = string_to_float_or_int(params[:number]).humanize
	end


	private
	
	def string_to_float_or_int string
		return "Input cannot be empty." if string.length == 0
		return "Only numbers are allowed!" if string.to_i == 0
		return string.to_f if string.include?('.') || string.include?(',')
		string.to_i
	end
end