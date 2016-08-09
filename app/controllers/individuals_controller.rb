class IndividualsController < ApplicationController
  def new
    @individual = Individual.new
  end

  def create
    @individual = Individual.new(individuals_params)
    if @individual.valid?
      @individual.save
      session[:user_id] = @individual.id
      session[:type] = 1
      redirect_to root_path
    else
      redirect_to new_individual_path
    end
  end

  def edit
    @individual = Individual.find(params[:id])
  end

  def update
    @individual = Individual.find(params[:id])
    if @individual.update(individual_params)
      redirect_to individuals_path(params[:id])
    else
      redirect_to edit_individual_path(params[:id])
    end
  end

  def show
    byebug
    @individual = Individual.find(params[:id])
  end

  def destroy
    @individual = Individual.find(params[:id])
    @individual.destroy
    redirect_to root_path
  end

  def individuals_params
    params[:individuals][:password_confirmation] = params[:individuals][:password]
    params.require(:individuals).permit(:name,:email,:password,:password_confirmation)
  end
end
