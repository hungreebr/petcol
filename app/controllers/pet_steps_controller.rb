class PetStepsController < ApplicationController
include Wicked::Wizard
steps :photo, :tagline

  def show
 	@pet = Pet.last
    @author_id = current_user.id
    session[:pet_id] = @pet.id
    render_wizard
  end
  
  def update
  	@pet = Pet.last
  	@pet.update_attributes(params[:pet])
    render_wizard @pet
  end

  def create
    @pet= Pet.create
    redirect_to wizard_path(steps.first, :pet_id => @pet.id)
  end

 end

