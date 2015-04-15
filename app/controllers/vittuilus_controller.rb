class VittuilusController < ApplicationController
  before_action :set_vittuilu, only: [:show, :edit, :update, :destroy]

  # GET /vittuilus
  def index
    @vittuilus = Vittuilu.all
  end

  # GET /vittuilus/1
  def show
  end

  # GET /vittuilus/new
  def new
    @vittuilu = Vittuilu.new
  end

  # GET /vittuilus/1/edit
  def edit
  end

  # POST /vittuilus
  def create
    @vittuilu = Vittuilu.new(vittuilu_params)

    respond_to do |format|
      if @vittuilu.save
        format.html { redirect_to @vittuilu.retsept, notice: 'Kommentointi onnistui' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /vittuilus/1
  def update
    respond_to do |format|
      if @vittuilu.update(vittuilu_params)
        format.html { redirect_to @vittuilu, notice: 'Kommentti päivitetty' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /vittuilus/1
  def destroy
    @vittuilu.destroy
    respond_to do |format|
      format.html { redirect_to @vittuilu.retsept, notice: 'Mikäs siinä ny oli vikana? Yrittäisit ees ens kerralla…' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vittuilu
      @vittuilu = Vittuilu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vittuilu_params
      params.require(:vittuilu).permit(:user_nimi, :teksti, :retsept_id, :arvostus)
    end
end
