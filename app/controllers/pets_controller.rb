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
  @pet = Pet.find(params[:id])
   	@feed = Post.find_by_id(:id)
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
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(params[:pet])
		if @pet.save
			if params[:pet][:pet_image].present?
				render :crop	
			else
				redirect_to @pet, notice: "Novo pet cadastrado com sucesso!"
			end
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
      format.html { redirect_to pets_url }
      format.json { head :no_content }
    end
  end
end