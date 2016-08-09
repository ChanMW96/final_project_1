class HomeController < ApplicationController
  def index
  	@individual = Individual.new
  	@company = Company.new
  end
end
