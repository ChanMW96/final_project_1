class UsersController < ApplicationController
  def new
      @user = User.new

  end

  def create
    if params[:choice] == 'individual'
      redirect_to new_individuals_path(params)
    elsif params[:choice] == 'company'
      redirect_to new_companies_path(params)
    else
      @user = User.new(user_params)
      if @user.valid?
        @user.save
        redirect_to root_path
      else
        redirect_to new_user_path
      end
    end
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to users_path(params[:id])
      else
        redirect_to edit_user_path(params[:id])
      end
  end

  def show
      @user = User.find(params[:id])
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:email)
  end

end
