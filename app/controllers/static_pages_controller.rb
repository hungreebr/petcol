class StaticPagesController < ApplicationController

	def index
		respond_to do |format|
		format.html # index.html.erb
	end
	 end
	def profile
	
	 @pet = Pet.all
			respond_to do |format|
		format.html # profile.html.erb
	end
end
end