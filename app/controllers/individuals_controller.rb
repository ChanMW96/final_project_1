class IndividualsController < ApplicationController
  def new
    @individual = Individual.new
  end

  def create
    @individual = Individual.new(individuals_params)
    if @individual.valid?
      @individual.save
      redirect_to root_path
    else
      redirect_to new_individual_path
    end
  end

  def edit
    @individual = Individual.find(:id)
  end

  def update
    @individual = Individual.find(:id)
    if @individual.update(individual_params)
      redirect_to individuals_path(:id)
    else
      redirect_to edit_individual_path(:id)
    end
  end

  def show
    @individual = Individual.find(:id)
  end

  def destroy
    @individual = Individual.find(:id)
    @individual.destroy
    redirect_to root_path
  end

  def individuals_params
    params[:individuals][:password_confirmation] = params[:individuals][:password]
    params.require(:individuals).permit(:name,:email,:password,:password_confirmation)
  end
end
