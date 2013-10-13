class PetStepsController < ApplicationController
 include Wicked::Wizard
  steps :name, :breed
  
  def show
 	  @pet = Pet.last
    @author_id = current_user.id
    render_wizard
  end
  
  def update
  @pet = Pet.last
  @pet.attributes = params[:pet]
  render_wizard @pet
  end
 end

