class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.valid?
      @user.save
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(:id)
  end

  def update
    @user = User.find(:id)
    if @user.update(params[:user])
      redirect_to users_path(:id)
    else
      redirect_to edit_user_path(:id)
    end
  end

  def show
    # @user = User.find(:id)
  end

  def destroy
    @user = User.find(:id)
    @user.destroy
    redirect_to root_path
  end
end
