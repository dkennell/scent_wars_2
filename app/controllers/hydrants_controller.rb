class HydrantsController < ApplicationController
  before_action :set_hydrant, only: [:show, :edit, :update, :destroy]

  # GET /hydrants
  # GET /hydrants.json
  def index
    @hydrants = Hydrant.all
  end

  # GET /hydrants/1
  # GET /hydrants/1.json
  def show
  end

  # GET /hydrants/new
  def new
    @hydrant = Hydrant.new
  end

  # GET /hydrants/1/edit
  def edit
  end

  # POST /hydrants
  # POST /hydrants.json
  def create
    @hydrant = Hydrant.new(hydrant_params)

    respond_to do |format|
      if @hydrant.save
        format.html { redirect_to @hydrant, notice: 'Hydrant was successfully created.' }
        format.json { render :show, status: :created, location: @hydrant }
      else
        format.html { render :new }
        format.json { render json: @hydrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hydrants/1
  # PATCH/PUT /hydrants/1.json
  def update
    respond_to do |format|
      if @hydrant.update(hydrant_params)
        format.html { redirect_to @hydrant, notice: 'Hydrant was successfully updated.' }
        format.json { render :show, status: :ok, location: @hydrant }
      else
        format.html { render :edit }
        format.json { render json: @hydrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hydrants/1
  # DELETE /hydrants/1.json
  def destroy
    @hydrant.destroy
    respond_to do |format|
      format.html { redirect_to hydrants_url, notice: 'Hydrant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hydrant
      @hydrant = Hydrant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hydrant_params
      params.require(:hydrant).permit(:dog_id, :image)
    end
end
