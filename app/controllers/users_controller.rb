class UsersController < ApplicationController
  before_action :check_user_login, except: [:new, :create]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
    @activities = Activity.all
  end

  # GET /users/1/edit
  def edit
    @activities = Activity.all
  end

  # POST /users
  # POST /users.json
  def create
    @activities = Activity.all
    @user = User.new(user_params)

    if @user.save
      UserMailer.confirm_email(@user).deliver
      redirect_to user_path(@user)
    else
      render action: :new
    end
  end 

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def confirm
    head :ok
  end
    # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json

  def update
    @current_user.update_attributes(user_params)
    redirect_to user_path(@current_user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :name, :handle, :sex, :age, :photo, :remove_photo, :email)
    end
end
