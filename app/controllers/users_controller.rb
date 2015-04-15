class UsersController < ApplicationController

	layout "application"
	
	
	before_action :authenticate_user!
	before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: '#{@user.etunimi} #{@user.sukunimi} lisätty jäsentietokantaan.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: '#{@user.etunimi} #{@user.sukunimi} päivitetty.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Epätoivottu tapaus hävitetty.' }
    end
  end	

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:etunimi, :sukunimi, :email, :password, :password_confirmation, :kotikunta, :metsastajanumero, :ayy_jasen, :muussa_seurassa, :hallituksessa, :current_password, :oravannahat)
    end
end