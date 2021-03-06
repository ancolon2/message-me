class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]
  #before_action :require_same_user, only: [:edit, :update, :destroy]
  #before_action :require_admin, only: [:destroy]
  
  def index
    #@users = User.paginate(page: params[:page], per_page:5)
  end
  
  def show
    @user = User.all
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:danger] = "User and all articles created by user have been deleted"
    redirect_to users_path
  end
  
  def new
    @user = User.new
  end
  
  def create
    #debugger
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to the MessageMe Application"
      redirect_to root_path
    else
      render 'new'  
    end
  end
    
  def edit
  end
      
  def update
    if @user.update(user_params)
      flash[:success] = "Your account was updated successfully"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
  
    def user_params
      params.require(:user).permit(:username, :password)
    end
    
    def set_user
      @user = User.find(params[:id])
    end
    
end