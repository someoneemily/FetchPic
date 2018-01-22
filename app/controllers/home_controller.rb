class HomeController < ApplicationController
	def new
	end 
	def index
		@images = Image.where(private: "\x00")
	end 
end
