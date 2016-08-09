class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.valid?
      @company.save
      session[:user_id] = @company.id
      session[:type] = 2
      redirect_to root_path
    else
      redirect_to new_company_path
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to companies_path(params[:id])
    else
      redirect_to edit_company_path(params[:id])
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to root_path
  end

  def company_params
    params[:companies][:password_confirmation] = params[:companies][:password]
    params.require(:companies).permit(:name,:email,:description,:logo,:introduction_video,:password,:password_confirmation)
  end
end
