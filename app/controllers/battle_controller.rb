class BattleController < ApplicationController
def show
	@petrand = Pet.all.sample
	@petrand2 = Pet.all.sample
	@petvote1 = @petrand.liked_by current_user
	@user = current_user	
end

def index
	@petrand = Pet.last
	@petrand2 = Pet.first
	@petvote1 = @petrand.liked_by current_user
	@user = current_user	
end

def voteup
	@petrand = Pet.all.sample
	@petvote1 = @petrand.liked_by current_user
	redirect_to root_path
end	

def upvote
  @petlast = Pet.last
  @petlast.liked_by current_user
  redirect_to battle_path
end

end
