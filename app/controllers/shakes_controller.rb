class ShakesController < ApplicationController

layout "application"

	before_action :authenticate_user!
	before_action :set_shake, only: [:show, :edit, :update, :destroy]

  # GET /shakes
  # GET /shakes.json
  def index
    @shakes = Shake.all
  end

  # GET /shakes/1
  # GET /shakes/1.json
  def show
  end

  # GET /shakes/new
  def new
    @shake = Shake.new
  end

  # GET /shakes/1/edit
  def edit
  end

  # POST /shakes
  # POST /shakes.json
  def create
    @shake = Shake.new(shake_params)

    respond_to do |format|
      if @shake.save
        format.html { redirect_to shakes_path, notice: 'Pirtelö luotu.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /shakes/1
  # PATCH/PUT /shakes/1.json
  def update
    respond_to do |format|
      if @shake.update(shake_params)
        format.html { redirect_to shakes_path, notice: 'Pirtelö korjattu.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /shakes/1
  # DELETE /shakes/1.json
  def destroy
    @shake.destroy
    respond_to do |format|
      format.html { redirect_to shakes_url, notice: 'Pirtelö hävitetty.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shake
      @shake = Shake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shake_params
      params.require(:shake).permit(:nimi, :kuvaus, :arvo)
    end
end
