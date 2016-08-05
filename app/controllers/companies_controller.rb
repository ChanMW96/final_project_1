class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.valid?
      @company.save
      redirect_to root_path
    else
      redirect_to new_company_path
    end
  end

  def edit
    @company = Company.find(:id)
  end

  def update
    @company = Company.find(:id)
    if @company.update(params[:company])
      redirect_to companies_path(:id)
    else
      redirect_to edit_company_path(:id)
    end
  end

  def show
    @company = Company.find(:id)
  end

  def destroy
    @company = Company.find(:id)
    @company.destroy
    redirect_to root_path
  end
end
