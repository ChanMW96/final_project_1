class SessionsController < ApplicationController
  def new
  end

  def create
  	temp = params[:session]
		@individual = Individual.find_by(email:temp['email'])
  	@company = Company.find_by(email:temp['email'])
    byebug
    if @individual.nil? && @company.nil?
  		redirect_to new_users_path
  	elsif !@individual.nil?
  		if @individual.authenticate(temp['password'])
  			session['individual_id']=@individual.id
  			redirect_to root_path
  		else
  			redirect_to new_users_path
  		end
    elsif !@company.nil?
      if @company.authenticate(temp['password'])
        session['company_id']=@company.id
        redirect_to root_path
      else
        redirect_to new_users_path
      end
  	end
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to root_path
  end
end
