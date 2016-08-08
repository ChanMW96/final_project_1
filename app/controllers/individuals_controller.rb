class IndividualsController < ApplicationController
  def new
    @individual = Individual.new
  end

  def create
    @individual = Individual.new(params[:individual])
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
    if @individual.update(params[:individual])
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
end
