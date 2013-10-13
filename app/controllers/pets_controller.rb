class PetsController < ApplicationController
 before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pets }
    end
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
<<<<<<< HEAD
    @pet = Pet.find(params[:id])
    @feed = Post.find_by_id(:id)
=======
  @pet = Pet.find(params[:id])
  @feed = Post.find_by_id(:id)
>>>>>>> 3d170c2191ed8b908807fed788712b57ecb2f3d5
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet }
    end
  end

  # GET /pets/new
  # GET /pets/new.json
  def new
    @pet = Pet.new
    @author_id = current_user.id
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet }
    end
  end

  # GET /pets/1/edit
  def edit
    @pet = Pet.find(params[:id])
    @author_id = current_user.id
  end

  # POST /pets
  # POST /pets.json
  def create
    @author_id = current_user.id
    @pet = Pet.new(params[:pet])
		if @pet.save
        session[:pet_id] = @pet.id
			   redirect_to pet_steps_path
		else
			render :new
    end
  end
     

  # PUT /pets/1
  # PUT /pets/1.json
  def update
    @pet = Pet.find(params[:id])
    if @pet.update_attributes(params[:pet])
		  if params[:pet][:pet_image].present?
				render :crop	
			else
				redirect_to @pet, notice: "Cadastro atualizado com sucesso!"
			end
		else
			render :new
    end
  end
  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to profile_url }
      format.json { head :no_content }
    end
  end
end