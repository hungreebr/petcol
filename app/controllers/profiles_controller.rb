class ProfilesController < ApplicationController
  def show
	@user = User.find_by_profile_name(params[:id]) || current_user
	if @user
		@pets = @user.pets
		render action: :show
	else
 redirect_to login_path
	end	
  end
  
  def testrender
  	 respond_to do |format|
       format.js 
    end
  end  
end
