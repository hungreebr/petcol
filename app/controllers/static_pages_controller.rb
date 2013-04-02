class StaticPagesController < ApplicationController

	def index
		render :login => 'devise/sessions#new'
	 end
	def profile
	
	 @pet = Pet.all
			respond_to do |format|
		format.html # profile.html.erb
	end
end
end