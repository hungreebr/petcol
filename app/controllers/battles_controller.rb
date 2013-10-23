class BattlesController < ApplicationController
def show
	@petrand = Pet.all.sample
	@petrand2 = Pet.all.sample
	@petvote1 = @petrand.liked_by current_user
	@user = current_user	
end

def index
 @petrand1 = Pet.all.sample
	#@petrand1 = Pet.first
 @petrand2 = Pet.where("id <> ?", @petrand1.id).sample
	#@petrand2 = Pet.last
	@user = current_user	
end

def vote
  @petrand1 = Pet.find(params[:id])
  @petrand1.vote!
  redirect_to battles_path, notice: "Thank you for voting!"
end

end
