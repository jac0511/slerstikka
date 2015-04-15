class RetseptsController < ApplicationController
  before_action :set_retsept, only: [:show, :edit, :update, :destroy]

  # GET /retsepts
  def index
    @retsepts = Retsept.all
  end

  # GET /retsepts/1
  def show
	@retsept = Retsept.find(params[:id])
	@vittuilus = @retsept.vittuilus.all
	@vittuilu = @retsept.vittuilus.build
  end

  # GET /retsepts/new
  def new
    @retsept = Retsept.new
  end

  # GET /retsepts/1/edit
  def edit
  end

  # POST /retsepts
  def create
    @retsept = Retsept.new(retsept_params)

    respond_to do |format|
      if @retsept.save
        format.html { redirect_to @retsept, notice: 'Ruokaohje luotu onnistuneesti' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /retsepts/1
  def update
    respond_to do |format|
      if @retsept.update(retsept_params)
        format.html { redirect_to @retsept, notice: 'Ruokaohje päivitettiin onnistuneesti' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /retsepts/1
  def destroy
    @retsept.destroy
    respond_to do |format|
      format.html { redirect_to retsepts_url, notice: 'Paskalla safkavinkillä heitetty vesilintua' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retsept
      @retsept = Retsept.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retsept_params
      params.require(:retsept).permit(:luokka, :nimi, :kuvaus, :ainekset, :ohjeet, :aika, :vaativuus, :kuva)
    end
end
