class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  # GET /dogs
  # GET /dogs.json
  def index
    @dogs = Dog.all
  end

  def create
    if current_dog.blank?
      dog = Dog.create({
        name: 'dog' + SecureRandom.uuid.to_s,
        level: 1,
        points: 0,
        stamina: 100,
        image: 'https://www.what-dog.net/Images/faces2/scroll0015.jpg'
      })
      dog.update(name: 'dog-' + dog.id.to_s)
      session[:dog_id] = dog.id
    end
    redirect_to current_dog
  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show; end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to @dog, notice: 'Dog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :edit }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to dogs_url, notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dog
    @dog = Dog.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def dog_params
    params.require(:dog).permit(:name, :level, :points, :stamina, :image)
  end
end
