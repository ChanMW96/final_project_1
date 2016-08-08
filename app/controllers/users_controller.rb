class UsersController < ApplicationController
  def new
    if params[:choice] == 'user'
      redirect_to new_users_path
    elsif params[:choice] == 'company'
      redirect_to new_companies_path
    else
      @user = User.new(params[:user])
    end
  end

  def create
    if params[:choice] == 'user'
      redirect_to new_users_path
    elsif params[:choice] == 'company'
      redirect_to new_companies_path
    else
      @user = User.new(params[:user])
      byebug
      if @user.valid?
        @user.save
        redirect_to root_path
      else
        redirect_to new_user_path
      end
    end
  end

  def edit
    if params[:choice] == 'user'
      redirect_to new_users_path
    elsif params[:choice] == 'company'
      redirect_to new_companies_path
    else
      @user = User.find(:id)
    end
  end

  def update
    if params[:choice] == 'user'
      redirect_to new_users_path
    elsif params[:choice] == 'company'
      redirect_to new_companies_path
    else
      @user = User.find(:id)
      if @user.update(params[:user])
        redirect_to users_path(:id)
      else
        redirect_to edit_user_path(:id)
      end
    end
  end

  def show
    if params[:choice] == 'user'
      redirect_to new_users_path
    elsif params[:choice] == 'company'
      redirect_to new_companies_path
    else
      @user = User.find(:id)
    end
  end

  def destroy
    if params[:choice] == 'user'
      redirect_to new_users_path
    elsif params[:choice] == 'company'
      redirect_to new_companies_path
    else
    @user = User.find(:id)
    @user.destroy
    redirect_to root_path
  end
end
