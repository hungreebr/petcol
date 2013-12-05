class StaticPagesController < ApplicationController
	def index
		@notices = Notice.all
		@user = User.find_by_profile_name(params[:id]) || current_user
		if @user
			@pets = @user.pets
		else
	 		redirect_to login_path
		end	
  	end

  	def dashboard
  		render 'static_pages/admin/dashboard'
  	end	

	def profile
	 	@pet = Pet.all
		respond_to do |format|
			format.html # profile.html.erb
		end
	end
end