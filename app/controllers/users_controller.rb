class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def new
    @user = User.new
  end
  def create
    # render plain: params[:user] .inspect
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User was created'
      redirect_to user_path(@user)
    else
      # flash[:not_created] = 'Invalid info!!'
      render :new
    end
  end
  def show
  end
  def index
    @users = User.all
  end
  def edit
  end
  def update
    if @user.update(user_params)
      flash[:notice] = 'User was updated'
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
  def destroy
    @user.destroy
    flash[:notice] = 'User was Deleted'
    redirect_to users_path
  end
  private
    def set_user
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:email, :first_name, :last_name)
    end
end